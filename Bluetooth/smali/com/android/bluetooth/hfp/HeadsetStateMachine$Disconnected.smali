.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
.super Lcom/android/internal/util/State;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 420
    packed-switch p1, :pswitch_data_0

    .line 474
    :pswitch_0
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 422
    :pswitch_1
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore HF DISCONNECTED event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Incoming Hf accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 429
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1102(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 431
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 432
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 434
    :cond_1
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming Hf rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 437
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    .line 439
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 440
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 447
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_3
    const-string v1, "HeadsetStateMachine"

    const-string v2, "HFP Connected from Disconnected state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const-string v1, "HeadsetStateMachine"

    const-string v2, "Incoming Hf accepted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v4, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 452
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v2

    .line 453
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 454
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mConnected:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 455
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->configAudioParameters()V
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    goto/16 :goto_0

    .line 455
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 459
    :cond_2
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming Hf rejected. priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 461
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->disconnectHfpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    .line 463
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 464
    .restart local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0, p2, v4}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 471
    .end local v0    # "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    :pswitch_4
    const-string v1, "HeadsetStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore HF DISCONNECTING event, device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhonebook:Lcom/android/bluetooth/hfp/AtPhonebook;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/AtPhonebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->resetAtState()V

    .line 336
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mVoiceRecognitionStarted:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$702(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mWaitingForVoiceRecognition:Z
    invoke-static {v0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$802(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 339
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mService:Lcom/android/bluetooth/hfp/HeadsetService;
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Injector;->cancelBluetoothBattery(Landroid/content/Context;)V

    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 343
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disconnected process message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 344
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mIncomingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 345
    :cond_0
    const-string v4, "HeadsetStateMachine"

    const-string v5, "ERROR: current, target, or mIncomingDevice not null in Disconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return v6

    .line 349
    :cond_1
    const/4 v3, 0x1

    .line 350
    .local v3, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 352
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 353
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 356
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v7, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->connectHfpNative([B)Z
    invoke-static {v4, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 357
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v6, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    :sswitch_1
    move v6, v3

    .line 410
    goto :goto_0

    .line 361
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 363
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v5, "Query the phonestates"

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->log(Ljava/lang/String;)V

    .line 364
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothHeadsetPhone;->queryPhoneState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_2
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    monitor-enter v5

    .line 370
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1002(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 371
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mPending:Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;
    invoke-static {v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Pending;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/internal/util/IState;)V

    .line 372
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v5, 0xc9

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "HeadsetStateMachine"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 368
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v4, "HeadsetStateMachine"

    const-string v5, "Phone proxy null for query phone state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 372
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 381
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 384
    :sswitch_3
    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/hfp/HeadsetCallState;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_4

    :goto_3
    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processCallState(Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V
    invoke-static {v7, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetCallState;Z)V

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_3

    .line 388
    :sswitch_4
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentA2dpPlayStateChanged(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 391
    :sswitch_5
    iget-object v5, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetStateMachine;->processIntentA2dpStateChanged(Landroid/content/Intent;)V
    invoke-static {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    goto :goto_1

    .line 394
    :sswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;

    .line 398
    .local v2, "event":Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;
    iget v4, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 403
    const-string v4, "HeadsetStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected stack event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 400
    :pswitch_0
    iget v4, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->valueInt:I

    iget-object v5, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x65 -> :sswitch_6
    .end sparse-switch

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
