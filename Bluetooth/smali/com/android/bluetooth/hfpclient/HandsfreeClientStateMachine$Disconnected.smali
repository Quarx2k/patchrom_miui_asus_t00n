.class Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "HandsfreeClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1350
    packed-switch p1, :pswitch_data_0

    .line 1378
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1352
    :pswitch_0
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "HFPClient Connecting from Disconnected state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    const-string v1, "HandsfreeClientStateMachine"

    const-string v2, "Incoming AG accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1357
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1358
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1360
    :cond_1
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming AG rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bondState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    .line 1367
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1368
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 1369
    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1350
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1263
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1267
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkType:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1268
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkSignal:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1269
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorBatteryLevel:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1271
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    .line 1274
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCall:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1002(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1275
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallSetup:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1276
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorCallHeld:I
    invoke-static {v0, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1278
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1279
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;

    .line 1282
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    .line 1284
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1285
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1287
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1288
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCallsUpdate:Ljava/util/Hashtable;
    invoke-static {v0, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2002(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 1289
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueryCallsSupported:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    .line 1291
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1292
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1294
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x32

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    .line 1295
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1385
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1299
    monitor-enter p0

    :try_start_0
    const-string v4, "HandsfreeClientStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1302
    const-string v3, "HandsfreeClientStateMachine"

    const-string v4, "ERROR: current device not null in Disconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    :goto_0
    monitor-exit p0

    return v2

    .line 1306
    :cond_0
    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1308
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1310
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1313
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->connectNative([B)Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1314
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v0, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    :sswitch_1
    move v2, v3

    .line 1344
    goto :goto_0

    .line 1319
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1320
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnecting:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1299
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1326
    :sswitch_2
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    .line 1330
    .local v1, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1337
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnected: Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1332
    :pswitch_0
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnected: Connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1306
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 1330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
