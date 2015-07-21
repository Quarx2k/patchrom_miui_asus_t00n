.class final Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "HandsfreeClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;,
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;,
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;,
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;,
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;,
        Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final ACCEPT_CALL:I = 0xc

.field static final CONNECT:I = 0x1

.field static final CONNECT_AUDIO:I = 0x3

.field private static final DBG:Z = false

.field static final DIAL_MEMORY:I = 0xb

.field static final DIAL_NUMBER:I = 0xa

.field static final DISCONNECT:I = 0x2

.field static final DISCONNECT_AUDIO:I = 0x4

.field static final ENTER_PRIVATE_MODE:I = 0x10

.field private static final EVENT_TYPE_AUDIO_STATE_CHANGED:I = 0x2

.field private static final EVENT_TYPE_BATTERY_LEVEL:I = 0x7

.field private static final EVENT_TYPE_CALL:I = 0x9

.field private static final EVENT_TYPE_CALLHELD:I = 0xb

.field private static final EVENT_TYPE_CALLSETUP:I = 0xa

.field private static final EVENT_TYPE_CALL_WAITING:I = 0xd

.field private static final EVENT_TYPE_CLIP:I = 0xc

.field private static final EVENT_TYPE_CMD_RESULT:I = 0x10

.field private static final EVENT_TYPE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final EVENT_TYPE_CURRENT_CALLS:I = 0xe

.field private static final EVENT_TYPE_IN_BAND_RING:I = 0x13

.field private static final EVENT_TYPE_LAST_VOICE_TAG_NUMBER:I = 0x14

.field private static final EVENT_TYPE_NETWORK_SIGNAL:I = 0x6

.field private static final EVENT_TYPE_NETWORK_STATE:I = 0x4

.field private static final EVENT_TYPE_NONE:I = 0x0

.field private static final EVENT_TYPE_OPERATOR_NAME:I = 0x8

.field private static final EVENT_TYPE_RESP_AND_HOLD:I = 0x12

.field private static final EVENT_TYPE_RING_INDICATION:I = 0x15

.field private static final EVENT_TYPE_ROAMING_STATE:I = 0x5

.field private static final EVENT_TYPE_SUBSCRIBER_INFO:I = 0x11

.field private static final EVENT_TYPE_VOLUME_CHANGED:I = 0xf

.field private static final EVENT_TYPE_VR_STATE_CHANGED:I = 0x3

.field static final EXPLICIT_CALL_TRANSFER:I = 0x12

.field static final HOLD_CALL:I = 0xe

.field static final LAST_VTAG_NUMBER:I = 0x13

.field static final NO_ACTION:I = 0x0

.field static final QUERY_CURRENT_CALLS:I = 0x32

.field static final QUERY_OPERATOR_NAME:I = 0x33

.field static final REDIAL:I = 0x9

.field static final REJECT_CALL:I = 0xd

.field static final SEND_DTMF:I = 0x11

.field static final SET_MIC_VOLUME:I = 0x7

.field static final SET_SPEAKER_VOLUME:I = 0x8

.field private static final STACK_EVENT:I = 0x64

.field static final SUBSCRIBER_INFO:I = 0x34

.field private static final TAG:Ljava/lang/String; = "HandsfreeClientStateMachine"

.field static final TERMINATE_CALL:I = 0xf

.field static final TERMINATE_SPECIFIC_CALL:I = 0x35

.field static final VOICE_RECOGNITION_START:I = 0x5

.field static final VOICE_RECOGNITION_STOP:I = 0x6


# instance fields
.field private final EVENT_TYPE_NAMES:[Ljava/lang/String;

.field private alert:Landroid/net/Uri;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

.field private mAudioState:I

.field private mAudioWbs:Z

.field private mCalls:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mCallsUpdate:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation
.end field

.field private mChldFeatures:I

.field private final mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

.field private final mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

.field private mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

.field private mInBandRingtone:I

.field private mIndicatorBatteryLevel:I

.field private mIndicatorCall:I

.field private mIndicatorCallHeld:I

.field private mIndicatorCallSetup:I

.field private mIndicatorNetworkSignal:I

.field private mIndicatorNetworkState:I

.field private mIndicatorNetworkType:I

.field private mNativeAvailable:Z

.field private mOperatorName:Ljava/lang/String;

.field private mPeerFeatures:I

.field private mPendingAction:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCallsSupported:Z

.field private mQueuedActions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRingtone:Landroid/media/Ringtone;

.field private final mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

.field private mSubscriberInfo:Ljava/lang/String;

.field private mVgmFromStack:Z

.field private mVgsFromStack:Z

.field private mVoiceRecognitionActive:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 159
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->classInitNative()V

    .line 160
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V
    .locals 8
    .param p1, "context"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1182
    const-string v0, "HandsfreeClientStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 127
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z

    .line 129
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    .line 130
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    .line 152
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2578
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EVENT_TYPE_NONE"

    aput-object v1, v0, v3

    const-string v1, "EVENT_TYPE_CONNECTION_STATE_CHANGED"

    aput-object v1, v0, v5

    const-string v1, "EVENT_TYPE_AUDIO_STATE_CHANGED"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "EVENT_TYPE_VR_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EVENT_TYPE_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EVENT_TYPE_ROAMING_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EVENT_TYPE_NETWORK_SIGNAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EVENT_TYPE_BATTERY_LEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EVENT_TYPE_OPERATOR_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EVENT_TYPE_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EVENT_TYPE_CALLSETUP"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EVENT_TYPE_CALLHELD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EVENT_TYPE_CLIP"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EVENT_TYPE_CALL_WAITING"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EVENT_TYPE_CURRENT_CALLS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EVENT_TYPE_VOLUME_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EVENT_TYPE_CMD_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EVENT_TYPE_SUBSCRIBER_INFO"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EVENT_TYPE_RESP_AND_HOLD"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EVENT_TYPE_IN_BAND_RING"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EVENT_TYPE_LAST_VOICE_TAG_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EVENT_TYPE_RING_INDICATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    .line 1183
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .line 1185
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1186
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    .line 1187
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I

    .line 1188
    iput-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z

    .line 1190
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1192
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    .line 1193
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1195
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->alert:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    .line 1203
    :goto_0
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I

    .line 1204
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkType:I

    .line 1205
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkSignal:I

    .line 1206
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorBatteryLevel:I

    .line 1209
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    .line 1210
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    .line 1211
    iput v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    .line 1213
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;

    .line 1214
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    .line 1216
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I

    .line 1217
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I

    .line 1219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    .line 1220
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    .line 1222
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 1223
    iput-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 1224
    iput-boolean v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    .line 1226
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->initializeNative()V

    .line 1227
    iput-boolean v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mNativeAvailable:Z

    .line 1229
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    .line 1230
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    .line 1231
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    .line 1232
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    invoke-direct {v0, p0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    .line 1234
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1235
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1236
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1237
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1239
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1240
    return-void

    .line 1201
    :cond_1
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "alert is NULL no ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acceptCall(IZ)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "retry"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 882
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acceptCall: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 886
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-nez v1, :cond_1

    .line 887
    new-array v2, v7, [I

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 890
    if-nez v1, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 943
    :pswitch_1
    if-ne p1, v6, :cond_6

    .line 944
    const/4 v0, 0x2

    .line 963
    .local v0, "action":I
    :cond_2
    :goto_1
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 964
    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    goto :goto_0

    .line 897
    .end local v0    # "action":I
    :pswitch_2
    if-nez p1, :cond_0

    .line 910
    const/4 v0, 0x7

    .line 912
    .restart local v0    # "action":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    if-eqz p2, :cond_2

    .line 913
    const/4 v0, 0x1

    goto :goto_1

    .line 917
    .end local v0    # "action":I
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I

    move-result v2

    if-nez v2, :cond_4

    .line 919
    if-nez p1, :cond_0

    .line 925
    if-eqz p2, :cond_3

    .line 926
    const/4 v0, 0x7

    .restart local v0    # "action":I
    goto :goto_1

    .line 928
    .end local v0    # "action":I
    :cond_3
    const/4 v0, 0x2

    .line 930
    .restart local v0    # "action":I
    goto :goto_1

    .line 934
    .end local v0    # "action":I
    :cond_4
    if-ne p1, v6, :cond_5

    .line 935
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_1

    .line 936
    .end local v0    # "action":I
    :cond_5
    if-ne p1, v7, :cond_0

    .line 937
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_1

    .line 945
    .end local v0    # "action":I
    :cond_6
    if-ne p1, v7, :cond_7

    .line 946
    const/4 v0, 0x1

    .restart local v0    # "action":I
    goto :goto_1

    .line 947
    .end local v0    # "action":I
    :cond_7
    new-array v2, v6, [I

    aput v5, v2, v5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 948
    const/4 v0, 0x3

    .restart local v0    # "action":I
    goto :goto_1

    .line 950
    .end local v0    # "action":I
    :cond_8
    const/4 v0, 0x2

    .line 952
    .restart local v0    # "action":I
    goto :goto_1

    .line 954
    .end local v0    # "action":I
    :pswitch_4
    const/16 v0, 0xa

    .line 955
    .restart local v0    # "action":I
    goto :goto_1

    .line 966
    :cond_9
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t accept a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 884
    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 887
    :array_1
    .array-data 4
        0x6
        0x1
    .end array-data

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/util/Queue;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/util/Hashtable;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/util/Hashtable;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->connectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->connectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # [B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectAudioNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->startVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->stopVoiceRecognitionNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setVolumeNative(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->dialNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->dialMemoryNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->acceptCall(IZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->rejectCall()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->holdCall()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->terminateCall(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkType:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->enterPrivateMode(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->explicitCallTransfer()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # B

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendDtmfNative(B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->retrieveSubscriberInfoNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->requestLastVoiceTagNumberNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsStart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCurrentOperatorNameNative()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallIndicator(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallSetupIndicator(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallHeldIndicator(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkSignal:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateRespAndHold(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateClip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCallWaiting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IILjava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsDone()V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[I)Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # [I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorBatteryLevel:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I

    return v0
.end method

.method static synthetic access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I

    return p1
.end method

.method static synthetic access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->EVENT_TYPE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private addCall(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 179
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToCalls state:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " number:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    move v5, v1

    .line 185
    .local v5, "outgoing":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 186
    .local v6, "id":Ljava/lang/Integer;
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .end local v5    # "outgoing":Z
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_1
    move v5, v4

    .line 181
    goto :goto_0

    .line 190
    .restart local v5    # "outgoing":Z
    .restart local v6    # "id":Ljava/lang/Integer;
    :cond_2
    new-instance v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHandsfreeClientCall;-><init>(IILjava/lang/String;ZZ)V

    .line 192
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    .line 195
    return-void
.end method

.method private addCallWaiting(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 764
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallWaiting number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 767
    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 769
    :cond_0
    return-void
.end method

.method private addQueuedAction(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    .line 168
    return-void
.end method

.method private addQueuedAction(II)V
    .locals 4
    .param p1, "action"    # I
    .param p2, "data"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method private addQueuedAction(ILjava/lang/Object;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method private broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    .line 2233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.handsfreeclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2235
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2237
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2238
    const-string v1, "android.bluetooth.handsfreeclient.extra.AUDIO_WBS"

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2241
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2242
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2243
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-void
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "prevState"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2248
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 2257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.handsfreeclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2259
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2260
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2263
    if-ne p2, v5, :cond_9

    .line 2264
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_0

    .line 2266
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2268
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2270
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2272
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 2274
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v6, :cond_3

    .line 2278
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2280
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 2282
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2286
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 2288
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2290
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_6

    .line 2292
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2294
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v5, :cond_7

    .line 2296
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2298
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v6, :cond_8

    .line 2300
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2302
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 2304
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2308
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2309
    return-void
.end method

.method private callsInState(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 242
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_1
    return v1
.end method

.method private changeCallsState(II)V
    .locals 5
    .param p1, "old_state"    # I
    .param p2, "new_state"    # I

    .prologue
    .line 217
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeStateFromCalls old:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 220
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 221
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_0

    .line 224
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_1
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearPendingAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    .line 164
    return-void
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectNative([B)Z
.end method

.method private native dialMemoryNative(I)Z
.end method

.method private native dialNative(Ljava/lang/String;)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectNative([B)Z
.end method

.method private enterPrivateMode(I)V
    .locals 4
    .param p1, "idx"    # I

    .prologue
    .line 1094
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterPrivateMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 1098
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-nez v0, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->isMultiParty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    const/4 v1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1111
    const/16 v1, 0x10

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1113
    :cond_2
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Couldn\'t enter private  id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "explicitCallTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1125
    :cond_0
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V

    goto :goto_0

    .line 1128
    :cond_1
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t transfer call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2550
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private varargs getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .locals 9
    .param p1, "states"    # [I

    .prologue
    .line 227
    const-string v6, "HandsfreeClientStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFromCallsWithStates states:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 229
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 230
    .local v5, "s":I
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 236
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :goto_1
    return-object v1

    .line 229
    .restart local v0    # "arr$":[I
    .restart local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "s":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCurrentDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2538
    const-string v0, "<unknown>"

    .line 2539
    .local v0, "defaultName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 2546
    .end local v0    # "defaultName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2542
    .restart local v0    # "defaultName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2543
    .local v1, "deviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 2546
    goto :goto_0
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 2
    .param p1, "address"    # [B

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private native handleCallActionNative(II)Z
.end method

.method private holdCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1016
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "holdCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-array v2, v5, [I

    const/4 v3, 0x4

    aput v3, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 1019
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v1, :cond_1

    .line 1020
    const/16 v0, 0x9

    .line 1030
    .local v0, "action":I
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1031
    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    .line 1035
    .end local v0    # "action":I
    :cond_0
    :goto_1
    return-void

    .line 1022
    :cond_1
    new-array v2, v5, [I

    aput v4, v2, v4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 1023
    if-eqz v1, :cond_0

    .line 1027
    const/4 v0, 0x2

    .restart local v0    # "action":I
    goto :goto_0

    .line 1033
    :cond_2
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t hold a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native initializeNative()V
.end method

.method private loopQueryCalls()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 865
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I

    move-result v3

    if-le v3, v1, :cond_1

    .line 876
    :cond_0
    :goto_0
    return v1

    .line 872
    :cond_1
    new-array v3, v1, [I

    const/4 v4, 0x4

    aput v4, v3, v2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 873
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 876
    goto :goto_0
.end method

.method static make(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .locals 3
    .param p0, "context"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    .line 1243
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V

    .line 1245
    .local v0, "hfcsm":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->start()V

    .line 1246
    return-object v0
.end method

.method private onAudioStateChanged(I[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "address"    # [B

    .prologue
    .line 2392
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2393
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2394
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2395
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2397
    return-void
.end method

.method private onBatteryLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 2428
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2429
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2430
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2432
    return-void
.end method

.method private onCall(I)V
    .locals 4
    .param p1, "call"    # I

    .prologue
    .line 2442
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2443
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2444
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2446
    return-void
.end method

.method private onCallHeld(I)V
    .locals 4
    .param p1, "callheld"    # I

    .prologue
    .line 2456
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2457
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2458
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2460
    return-void
.end method

.method private onCallSetup(I)V
    .locals 4
    .param p1, "callsetup"    # I

    .prologue
    .line 2449
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2450
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2451
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2453
    return-void
.end method

.method private onCallWaiting(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2477
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2478
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2479
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2481
    return-void
.end method

.method private onClip(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2470
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2471
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2472
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2474
    return-void
.end method

.method private onCmdResult(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "cme"    # I

    .prologue
    .line 2503
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2504
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2505
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    .line 2506
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2508
    return-void
.end method

.method private onConnectionStateChanged(III[B)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "peer_feat"    # I
    .param p3, "chld_feat"    # I
    .param p4, "address"    # [B

    .prologue
    .line 2382
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2383
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2384
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    .line 2385
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt3:I

    .line 2386
    invoke-direct {p0, p4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 2387
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2389
    return-void
.end method

.method private onCurrentCalls(IIIILjava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dir"    # I
    .param p3, "state"    # I
    .param p4, "mparty"    # I
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 2484
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2485
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2486
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    .line 2487
    iput p3, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt3:I

    .line 2488
    iput p4, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt4:I

    .line 2489
    iput-object p5, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2490
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2492
    return-void
.end method

.method private onCurrentOperator(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2435
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2436
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2437
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2439
    return-void
.end method

.method private onInBandRing(I)V
    .locals 4
    .param p1, "in_band"    # I

    .prologue
    .line 2519
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2520
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2521
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2523
    return-void
.end method

.method private onLastVoiceTagNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2526
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2527
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2528
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2530
    return-void
.end method

.method private onNetworkRoaming(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2414
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2415
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2416
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2418
    return-void
.end method

.method private onNetworkSignal(I)V
    .locals 4
    .param p1, "signal"    # I

    .prologue
    .line 2421
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2422
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2423
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2425
    return-void
.end method

.method private onNetworkState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2407
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2408
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2409
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2411
    return-void
.end method

.method private onRespAndHold(I)V
    .locals 4
    .param p1, "resp_and_hold"    # I

    .prologue
    .line 2463
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2464
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2465
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2467
    return-void
.end method

.method private onRingIndication()V
    .locals 4

    .prologue
    .line 2532
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2533
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2535
    return-void
.end method

.method private onSubscriberInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 2511
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2512
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2513
    iput-object p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    .line 2514
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2516
    return-void
.end method

.method private onVolumeChange(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2495
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2496
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2497
    iput p2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    .line 2498
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2500
    return-void
.end method

.method private onVrStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 2400
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V

    .line 2401
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iput p1, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    .line 2402
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2404
    return-void
.end method

.method private queryCallsDone()V
    .locals 6

    .prologue
    .line 800
    const-string v3, "HandsfreeClientStateMachine"

    const-string v4, "queryCallsDone"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 805
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 806
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 808
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 812
    const-string v4, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone call removed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 815
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    const/4 v3, 0x7

    invoke-direct {p0, v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_0

    .line 819
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 820
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 821
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 823
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;"
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 825
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 826
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->setNumber(Ljava/lang/String;)V

    .line 829
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 833
    const-string v4, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone call changed id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto/16 :goto_1

    .line 836
    :cond_4
    const-string v4, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallsDone new call id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getId()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto/16 :goto_1

    .line 841
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    .line 842
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 844
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->loopQueryCalls()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 845
    const-string v3, "HandsfreeClientStateMachine"

    const-string v4, "queryCallsDone ambigious calls, starting call query loop"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v3, 0x32

    const-wide/16 v4, 0x5f3

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessageDelayed(IJ)V

    .line 848
    :cond_6
    return-void
.end method

.method private queryCallsStart()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 773
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "queryCallsStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-nez v2, :cond_0

    .line 796
    :goto_0
    return v0

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    .line 783
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    move v0, v1

    .line 784
    goto :goto_0

    .line 787
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCurrentCallsNative()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 788
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    .line 789
    const/16 v2, 0x32

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    move v0, v1

    .line 790
    goto :goto_0

    .line 793
    :cond_2
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "updateCallsStart queryCurrentCallsNative failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    .line 795
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private queryCallsUpdate(IILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "multiParty"    # Z
    .param p5, "outgoing"    # Z

    .prologue
    .line 852
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCallsUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHandsfreeClientCall;-><init>(IILjava/lang/String;ZZ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private native queryCurrentCallsNative()Z
.end method

.method private native queryCurrentOperatorNameNative()Z
.end method

.method private rejectCall()V
    .locals 5

    .prologue
    .line 973
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "rejectCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "stopping ring after call reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 979
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 984
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-nez v1, :cond_1

    .line 1011
    :goto_0
    return-void

    .line 988
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 994
    :pswitch_1
    const/4 v0, 0x0

    .line 1006
    .local v0, "action":I
    :goto_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1007
    const/16 v2, 0xd

    invoke-direct {p0, v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    goto :goto_0

    .line 990
    .end local v0    # "action":I
    :pswitch_2
    const/16 v0, 0x8

    .line 991
    .restart local v0    # "action":I
    goto :goto_1

    .line 997
    .end local v0    # "action":I
    :pswitch_3
    const/16 v0, 0xb

    .line 998
    .restart local v0    # "action":I
    goto :goto_1

    .line 1009
    :cond_2
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t reject a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 979
    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x1
    .end array-data

    .line 988
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private varargs removeCalls([I)V
    .locals 9
    .param p1, "states"    # [I

    .prologue
    .line 198
    const-string v6, "HandsfreeClientStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFromCalls states:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 203
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/bluetooth/BluetoothHandsfreeClientCall;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 206
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget v5, v0, v2

    .line 207
    .local v5, "s":I
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 209
    const/4 v6, 0x7

    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_0

    .line 206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v0    # "arr$":[I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":I
    :cond_2
    return-void
.end method

.method private native requestLastVoiceTagNumberNative()Z
.end method

.method private native retrieveSubscriberInfoNative()Z
.end method

.method private sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V
    .locals 3
    .param p1, "c"    # Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.handsfreeclient.profile.action.AG_CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.handsfreeclient.extra.CALL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private native sendDtmfNative(B)Z
.end method

.method private setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V
    .locals 2
    .param p1, "c"    # Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .param p2, "state"    # I

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 278
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "abandonAudioFocus "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 283
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->setState(I)V

    .line 284
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto :goto_0
.end method

.method private native setVolumeNative(II)Z
.end method

.method private native startVoiceRecognitionNative()Z
.end method

.method private native stopVoiceRecognitionNative()Z
.end method

.method private terminateCall(I)V
    .locals 7
    .param p1, "idx"    # I

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 1038
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "terminateCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    if-nez p1, :cond_4

    .line 1041
    const/16 v0, 0x8

    .line 1043
    .local v0, "action":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 1046
    .local v1, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v1, :cond_0

    .line 1047
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1048
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    .line 1054
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 1055
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1056
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    .line 1091
    .end local v0    # "action":I
    :cond_1
    :goto_1
    return-void

    .line 1050
    .restart local v0    # "action":I
    :cond_2
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "ERROR: Couldn\'t terminate outgoing call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
    :cond_3
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "ERROR: Couldn\'t terminate active calls"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1063
    .end local v0    # "action":I
    .end local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 1065
    .restart local v1    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v1, :cond_1

    .line 1069
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1071
    :pswitch_1
    const/4 v0, 0x5

    .line 1081
    .restart local v0    # "action":I
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->handleCallActionNative(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1082
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 1083
    const/16 v2, 0x35

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V

    goto :goto_1

    .line 1075
    .end local v0    # "action":I
    :pswitch_2
    const/16 v0, 0x8

    .line 1076
    .restart local v0    # "action":I
    goto :goto_2

    .line 1085
    :cond_5
    invoke-direct {p0, v6, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(II)V

    goto :goto_1

    .line 1088
    :cond_6
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Couldn\'t terminate a call, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1043
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateCallHeldIndicator(I)V
    .locals 11
    .param p1, "callheld"    # I

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 550
    const-string v3, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallHeld "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0, v8, v8, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->waitForIndicators(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-boolean v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v3, :cond_1

    .line 557
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 561
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 697
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallsMultiParty()V

    .line 699
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_0

    .line 563
    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 596
    const-string v3, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 565
    :sswitch_0
    new-array v3, v6, [I

    aput v6, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 566
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 569
    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_1

    .line 571
    :pswitch_2
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 572
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 574
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 577
    :pswitch_3
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 579
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 586
    :sswitch_2
    iget v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    if-ne v3, v6, :cond_3

    iget v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    if-ne v3, v9, :cond_3

    .line 588
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    goto :goto_1

    .line 593
    :cond_3
    new-array v3, v6, [I

    aput v6, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    goto :goto_1

    .line 601
    :pswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 655
    const-string v3, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 603
    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 605
    new-array v3, v6, [I

    aput v10, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 607
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v0, :cond_5

    .line 608
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 610
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 624
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 612
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 613
    .local v1, "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_7

    .line 615
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_2

    .line 617
    :cond_7
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 619
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_2

    .line 628
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v2    # "i$":Ljava/util/Iterator;
    :sswitch_4
    new-array v3, v6, [I

    aput v10, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 630
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v0, :cond_8

    .line 631
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 633
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto/16 :goto_1

    .line 638
    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 639
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v3

    if-nez v3, :cond_a

    .line 640
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_3

    .line 641
    :cond_a
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 642
    invoke-direct {p0, v1, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_3

    .line 647
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v2    # "i$":Ljava/util/Iterator;
    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 648
    .restart local v1    # "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    if-eq v1, v3, :cond_b

    .line 649
    invoke-direct {p0, v1, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_4

    .line 652
    .end local v1    # "cc":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_c
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 660
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 689
    const-string v3, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected callheld=0 while in action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 664
    :sswitch_6
    invoke-direct {p0, v7, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    goto/16 :goto_1

    .line 668
    :sswitch_7
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_1

    .line 670
    :pswitch_7
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 671
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 673
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 676
    :pswitch_8
    invoke-direct {p0, v6, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 678
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 686
    :sswitch_8
    new-array v3, v6, [I

    aput v7, v3, v7

    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    goto/16 :goto_1

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 563
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch

    .line 569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_5
    .end sparse-switch

    .line 660
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xd -> :sswitch_7
        0xf -> :sswitch_8
    .end sparse-switch

    .line 668
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallIndicator(I)V
    .locals 8
    .param p1, "call"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 361
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0, p1, v4, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_1

    .line 368
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 372
    :cond_1
    const/4 v0, 0x0

    .line 374
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    packed-switch p1, :pswitch_data_0

    .line 414
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    goto :goto_0

    .line 376
    :pswitch_0
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    goto :goto_1

    .line 382
    :pswitch_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    if-ne v1, v6, :cond_3

    .line 385
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_2

    .line 386
    new-array v1, v6, [I

    const/4 v2, 0x5

    aput v2, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_2

    .line 388
    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 389
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 399
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    if-eqz v1, :cond_4

    .line 400
    new-array v1, v7, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_4

    .line 404
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 408
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallsMultiParty()V

    goto :goto_1

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 376
    :array_0
    .array-data 4
        0x0
        0x1
        0x6
    .end array-data

    .line 400
    :array_1
    .array-data 4
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private updateCallSetupIndicator(I)V
    .locals 9
    .param p1, "callsetup"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 418
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallSetupIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "stopping ring after no response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 425
    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->waitForIndicators(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_2

    .line 430
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 434
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 544
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallsMultiParty()V

    .line 546
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_0

    .line 436
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 496
    :pswitch_1
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected callsetup=0 while in action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    .line 465
    :pswitch_3
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "Unexpected callsetup=0 while in action ACCEPT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    :pswitch_4
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 442
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 445
    :pswitch_5
    new-array v1, v5, [I

    aput v4, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 446
    const/4 v1, 0x5

    invoke-direct {p0, v1, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->changeCallsState(II)V

    .line 448
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 453
    :pswitch_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    if-ne v1, v5, :cond_3

    .line 455
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 459
    :pswitch_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    if-nez v1, :cond_3

    .line 461
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_1

    .line 470
    :pswitch_8
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 480
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "Unexpected callsetup=0 while in action REJECT_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 472
    :sswitch_0
    new-array v1, v5, [I

    aput v8, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 473
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 476
    :sswitch_1
    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 477
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 489
    :pswitch_9
    new-array v1, v8, [I

    fill-array-data v1, :array_1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    .line 493
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 502
    :pswitch_a
    new-array v1, v5, [I

    aput v6, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 504
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-nez v0, :cond_5

    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 506
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    .line 515
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 519
    :pswitch_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto/16 :goto_1

    .line 509
    :cond_4
    const-string v1, ""

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 512
    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_2

    .line 526
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :pswitch_c
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 527
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 530
    :cond_6
    const-string v1, ""

    invoke-direct {p0, v6, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 534
    :pswitch_d
    new-array v1, v5, [I

    const/4 v2, 0x5

    aput v2, v1, v4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    if-nez v1, :cond_3

    .line 537
    const-string v1, ""

    invoke-direct {p0, v8, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    .line 436
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 438
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 440
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 489
    :array_1
    .array-data 4
        0x4
        0x2
        0x5
        0x3
    .end array-data

    .line 515
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private updateCallsMultiParty()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    invoke-direct {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I

    move-result v4

    if-le v4, v2, :cond_1

    .line 253
    .local v2, "multi":Z
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 254
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getState()I

    move-result v4

    if-nez v4, :cond_2

    .line 255
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->isMultiParty()Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 259
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->setMultiParty(Z)V

    .line 260
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto :goto_1

    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "multi":Z
    :cond_1
    move v2, v3

    .line 251
    goto :goto_0

    .line 262
    .restart local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "multi":Z
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->isMultiParty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->setMultiParty(Z)V

    .line 264
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto :goto_1

    .line 268
    .end local v0    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_3
    return-void
.end method

.method private updateClip(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 743
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClip number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-array v2, v7, [I

    aput v5, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 747
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-nez v0, :cond_1

    .line 750
    new-array v2, v7, [I

    const/4 v3, 0x5

    aput v3, v2, v6

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v1

    .line 751
    .local v1, "cw":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    if-eqz v1, :cond_0

    .line 752
    invoke-direct {p0, v1, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 761
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :goto_0
    return-void

    .line 755
    .restart local v1    # "cw":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_0
    invoke-direct {p0, v5, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v1    # "cw":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->setNumber(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendCallChangedIntent(Landroid/bluetooth/BluetoothHandsfreeClientCall;)V

    goto :goto_0
.end method

.method private updateRespAndHold(I)V
    .locals 7
    .param p1, "resp_and_hold"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 703
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatRespAndHold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v1, :cond_0

    .line 706
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 711
    .local v0, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    packed-switch p1, :pswitch_data_0

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 714
    :pswitch_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_2

    .line 717
    invoke-direct {p0, v0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    goto :goto_0

    .line 720
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v4, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_0

    .line 724
    :pswitch_1
    new-array v1, v6, [I

    aput v4, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_3

    .line 726
    invoke-direct {p0, v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 731
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V

    goto :goto_0

    .line 735
    :pswitch_2
    new-array v1, v6, [I

    aput v4, v1, v5

    invoke-direct {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeCalls([I)V

    goto :goto_0

    .line 711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 714
    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method private waitForIndicators(III)Z
    .locals 4
    .param p1, "call"    # I
    .param p2, "callsetup"    # I
    .param p3, "callheld"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 295
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    if-eq v2, v3, :cond_0

    .line 357
    :goto_0
    return v0

    .line 300
    :cond_0
    if-eq p1, v3, :cond_3

    .line 301
    iput p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    .line 309
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    if-ne v2, v3, :cond_5

    :cond_2
    move v0, v1

    .line 311
    goto :goto_0

    .line 302
    :cond_3
    if-eq p2, v3, :cond_4

    .line 303
    iput p2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    goto :goto_1

    .line 304
    :cond_4
    if-eq p3, v3, :cond_1

    .line 305
    iput p3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    goto :goto_1

    .line 315
    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsStart()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    .line 317
    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z

    if-eqz v2, :cond_6

    move v0, v1

    .line 318
    goto :goto_0

    .line 323
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I

    packed-switch v2, :pswitch_data_0

    .line 338
    :goto_2
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I

    packed-switch v2, :pswitch_data_1

    .line 347
    :goto_3
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I

    packed-switch v0, :pswitch_data_2

    :goto_4
    move v0, v1

    .line 357
    goto :goto_0

    .line 325
    :pswitch_0
    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 328
    :pswitch_1
    const/4 v2, 0x2

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 331
    :pswitch_2
    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_2

    .line 340
    :pswitch_3
    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_3

    .line 350
    :pswitch_4
    const-string v0, ""

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCall(ILjava/lang/String;)V

    goto :goto_4

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 338
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 347
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 1254
    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 1255
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->cleanupNative()V

    .line 1256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mNativeAvailable:Z

    .line 1258
    :cond_0
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->quitNow()V

    .line 1251
    return-void
.end method

.method declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2359
    :cond_0
    const/4 v0, 0x0

    .line 2361
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnectedDevices()Ljava/util/List;
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
    .line 2368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2370
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2371
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2373
    :cond_0
    monitor-exit p0

    .line 2374
    return-object v0

    .line 2373
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 2211
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2229
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2215
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2219
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2220
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    if-ne v0, v2, :cond_2

    .line 2221
    const/4 v1, 0x1

    goto :goto_0

    .line 2224
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    if-ne v0, v2, :cond_4

    .line 2225
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 2228
    :cond_4
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad currentState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2211
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getCurrentAgEvents()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2673
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2674
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android.bluetooth.handsfreeclient.extra.NETWORK_STATUS"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2675
    const-string v1, "android.bluetooth.handsfreeclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkSignal:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2676
    const-string v1, "android.bluetooth.handsfreeclient.extra.NETWORK_ROAMING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2677
    const-string v1, "android.bluetooth.handsfreeclient.extra.BATTERY_LEVEL"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorBatteryLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2678
    const-string v1, "android.bluetooth.handsfreeclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const-string v1, "android.bluetooth.handsfreeclient.extra.VOICE_RECOGNITION"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2680
    const-string v1, "android.bluetooth.handsfreeclient.extra.IN_BAND_RING"

    iget v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2681
    const-string v1, "android.bluetooth.handsfreeclient.extra.SUBSCRIBER_INFO"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    return-object v0
.end method

.method public getCurrentAgFeatures()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 1134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1135
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    .line 1137
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_3WAY_CALLING"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1139
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1141
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_VOICE_RECOGNITION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1143
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 1145
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ATTACH_NUMBER_TO_VT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1147
    :cond_2
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_3

    .line 1149
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_REJECT_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1151
    :cond_3
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    .line 1153
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1157
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 1159
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_ACCEPT_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1161
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_6

    .line 1163
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_HELD_OR_WAITING_CALL"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    :cond_6
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1167
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_RELEASE_AND_ACCEPT"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    :cond_7
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x20

    if-ne v1, v4, :cond_8

    .line 1171
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1173
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 1175
    const-string v1, "android.bluetooth.handsfreeclient.extra.EXTRA_AG_FEATURE_MERGE_AND_DETACH"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1178
    :cond_9
    return-object v0
.end method

.method public getCurrentCalls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2669
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
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
    .line 2317
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    .local v4, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v10, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 2320
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 2321
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 2322
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    .line 2323
    .local v5, "featureUuids":[Landroid/os/ParcelUuid;
    sget-object v10, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v5, v10}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2326
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 2327
    .local v2, "connectionState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v9, v0, v7

    .line 2328
    .local v9, "state":I
    if-ne v2, v9, :cond_1

    .line 2329
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2333
    .end local v0    # "arr$":[I
    .end local v2    # "connectionState":I
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "featureUuids":[Landroid/os/ParcelUuid;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "state":I
    :cond_2
    monitor-exit p0

    .line 2334
    return-object v4

    .line 2333
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method isAudioOn()Z
    .locals 2

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 2312
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 2313
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 2338
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2339
    .local v0, "priority":I
    const/4 v1, 0x0

    .line 2345
    .local v1, "ret":Z
    if-gtz v0, :cond_0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 2348
    :cond_0
    const/4 v1, 0x1

    .line 2350
    :cond_1
    return v1
.end method
