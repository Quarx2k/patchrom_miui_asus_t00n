.class final Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    }
.end annotation


# static fields
.field private static final A2DP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final AUDIO_FOCUS_GAIN:I = 0x1

.field private static final AUDIO_FOCUS_LOSS:I = 0x0

.field private static final AUDIO_FOCUS_LOSS_TRANSIENT:I = 0x2

.field static final AUDIO_STATE_REMOTE_SUSPEND:I = 0x0

.field static final AUDIO_STATE_STARTED:I = 0x2

.field static final AUDIO_STATE_STOPPED:I = 0x1

.field static final CONNECT:I = 0x1

.field static final CONNECTION_STATE_CONNECTED:I = 0x2

.field static final CONNECTION_STATE_CONNECTING:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field static final CONNECTION_STATE_DISCONNECTING:I = 0x3

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z = false

.field static final DISCONNECT:I = 0x2

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_REQUEST_AUDIO_FOCUS:I = 0x3

.field private static final IS_INVALID_DEVICE:I = 0x0

.field private static final IS_VALID_DEVICE:I = 0x1

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field private static final STACK_EVENT:I = 0x65


# instance fields
.field private final mA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

.field private mContext:Landroid/content/Context;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

.field private mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

.field private mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    .line 125
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->classInitNative()V

    .line 126
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V
    .locals 6
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 129
    const-string v3, "A2dpStateMachine"

    invoke-direct {p0, v3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 118
    iput-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 119
    iput-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    iput-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 121
    iput-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 928
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 957
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 131
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    .line 132
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 134
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->initNative()V

    .line 136
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-direct {v3, p0, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    .line 137
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-direct {v3, p0, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    .line 138
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-direct {v3, p0, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    .line 140
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 141
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 142
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 144
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 146
    const-string v3, "power"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 147
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "BluetoothA2dpService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    new-instance v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    invoke-direct {v3, p0, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    .line 150
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "filter":Landroid/content/IntentFilter;
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    const-string v3, "audio"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to register A2dp receiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->resumeA2dpNative()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->connectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->onConnectionStateChanged(I[B)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->suspendA2dpNative()V

    return-void
.end method

.method private native allowConnectionNative(I)V
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 840
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 843
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 786
    const/4 v0, 0x0

    .line 790
    .local v0, "delay":I
    if-ne p2, v5, :cond_0

    .line 792
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isSrcNative([B)I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 794
    const-string v2, "Peer Device is SNK"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 795
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, p1, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->setLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 807
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 809
    .local v1, "remoteSepConnected":I
    if-ne v1, v5, :cond_1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Remote Sep Connected SINKdevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 811
    :cond_1
    if-ne v1, v4, :cond_2

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Remote Sep Connected SRCdevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 813
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Remote Sep Connected NO Recordsdevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 816
    :cond_3
    if-ne v1, v5, :cond_4

    if-eq p2, v4, :cond_4

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updating audioManager state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 820
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 824
    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 825
    const/4 v0, 0x0

    .line 827
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIntentBroadcastHandler:Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p3, p2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 835
    return-void

    .line 798
    .end local v1    # "remoteSepConnected":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isSrcNative([B)I

    move-result v2

    if-nez v2, :cond_0

    .line 800
    const-string v2, "Peer Device is SRC"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 801
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, p1, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;I)Z

    goto/16 :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 849
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native informAudioFocusStateNative(I)V
.end method

.method private native initNative()V
.end method

.method private native isSrcNative([B)I
.end method

.method static make(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 3
    .param p0, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-string v1, "A2dpStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/content/Context;)V

    .line 164
    .local v0, "a2dpSm":Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->start()V

    .line 165
    return-object v0
.end method

.method private onAudioFocusRequest(I[B)V
    .locals 4
    .param p1, "enable"    # I
    .param p2, "address"    # [B

    .prologue
    .line 879
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 880
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkaudiofocus for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    .line 881
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 883
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    .line 884
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 885
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 886
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 888
    .end local v1    # "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    :cond_0
    return-void
.end method

.method private onAudioStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 860
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    .line 861
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 862
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 863
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 864
    return-void
.end method

.method private onCheckConnectionPriority([B)V
    .locals 3
    .param p1, "address"    # [B

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 868
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " okToConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logw(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->allowConnectionNative(I)V

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->allowConnectionNative(I)V

    goto :goto_0
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 853
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V

    .line 854
    .local v0, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    .line 855
    invoke-direct {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 856
    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 857
    return-void
.end method

.method private native resumeA2dpNative()V
.end method

.method private native suspendA2dpNative()V
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanupNative()V

    .line 185
    return-void
.end method

.method public doQuit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 176
    const-string v1, "doQuit()- Move A2DP State to DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->quitNow()V

    .line 181
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unregister A2dp receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getConnectedDevices()Ljava/util/List;
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
    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 725
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v1, v2, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_0
    monitor-exit p0

    .line 729
    return-object v0

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    if-ne v3, v4, :cond_0

    .line 717
    :goto_0
    return v1

    .line 695
    :cond_0
    monitor-enter p0

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 697
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    if-ne v0, v3, :cond_4

    .line 698
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 701
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    const/4 v1, 0x3

    monitor-exit p0

    goto :goto_0

    .line 719
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 704
    .restart local v0    # "currentState":Lcom/android/internal/util/IState;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 705
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 707
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 710
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    if-ne v0, v2, :cond_6

    .line 711
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 712
    const/4 v1, 0x2

    monitor-exit p0

    goto :goto_0

    .line 714
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 716
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad currentState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V

    .line 717
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
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
    .line 763
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v3, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 767
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
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

    .line 768
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 769
    .local v4, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v7, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v4, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 772
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 773
    .local v1, "connectionState":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_0

    .line 774
    aget v7, p1, v5

    if-ne v1, v7, :cond_1

    .line 775
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 779
    .end local v1    # "connectionState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v5    # "i":I
    :cond_2
    monitor-exit p0

    return-object v3

    .line 763
    .end local v0    # "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method isConnectedSrc(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x1

    .line 683
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 733
    monitor-enter p0

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x1

    monitor-exit p0

    .line 738
    :goto_0
    return v0

    .line 737
    :cond_0
    monitor-exit p0

    .line 738
    const/4 v0, 0x0

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 742
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 743
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 744
    .local v1, "priority":I
    const/4 v2, 0x0

    .line 746
    .local v2, "ret":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_2

    .line 749
    :cond_0
    const/4 v2, 0x0

    .line 759
    :cond_1
    :goto_0
    return v2

    .line 754
    :cond_2
    if-gtz v1, :cond_3

    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 757
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
