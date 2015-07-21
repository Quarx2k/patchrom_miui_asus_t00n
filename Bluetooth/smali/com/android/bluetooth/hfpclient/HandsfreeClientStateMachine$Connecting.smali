.class Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;
.super Lcom/android/internal/util/State;
.source "HandsfreeClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;

    .prologue
    .line 1389
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "peer_feat"    # I
    .param p3, "chld_feat"    # I
    .param p4, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1451
    packed-switch p1, :pswitch_data_0

    .line 1496
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1453
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v2, v1, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1455
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1456
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1459
    :pswitch_1
    const-string v0, "HandsfreeClientStateMachine"

    const-string v2, "HFPClient Connected from Connecting state"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPeerFeatures:I
    invoke-static {v0, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1462
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mChldFeatures:I
    invoke-static {v0, p3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1464
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1466
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    .line 1469
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1471
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1475
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1471
    :cond_1
    const/16 v0, 0xf

    goto :goto_1

    .line 1478
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incoming connection event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v2, v1, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1484
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p4, v4, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1487
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 1492
    :pswitch_3
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "outgoing connection started, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1392
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1503
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1397
    monitor-enter p0

    :try_start_0
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting process message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v1, 0x1

    .line 1400
    .local v1, "retValue":Z
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v2, :sswitch_data_0

    .line 1444
    const/4 v1, 0x0

    .line 1446
    .end local v1    # "retValue":Z
    :goto_0
    monitor-exit p0

    return v1

    .line 1404
    .restart local v1    # "retValue":Z
    :sswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1397
    .end local v1    # "retValue":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1407
    .restart local v1    # "retValue":Z
    :sswitch_1
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    .line 1411
    .local v0, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iget v2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1439
    :pswitch_0
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting: ignoring stack event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1413
    :pswitch_1
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting: Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state changed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget v2, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget v3, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    iget v4, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt3:I

    iget-object v5, v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1432
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1400
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
