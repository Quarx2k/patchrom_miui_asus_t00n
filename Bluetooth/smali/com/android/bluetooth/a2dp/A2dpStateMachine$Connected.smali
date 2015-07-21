.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/a2dp/A2dpStateMachine$1;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processAudioFocusRequestEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "enable"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x1

    .line 634
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v4, :cond_0

    if-ne p1, v4, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 640
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status gain returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 641
    if-ne v0, v4, :cond_1

    .line 642
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V
    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 647
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 644
    .restart local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    goto :goto_0
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 650
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is different from ConnectedDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAudioStateEvent  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 656
    packed-switch p1, :pswitch_data_0

    .line 674
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 660
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    .line 661
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 666
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 668
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    .line 669
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v4, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 598
    packed-switch p1, :pswitch_data_0

    .line 628
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 600
    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, v2, v4, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 603
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 605
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$4100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 606
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 622
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status loss returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V
    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    goto :goto_0

    .line 606
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v1, p2, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 610
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    .line 611
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 612
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 613
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from mTargetDevice in connected state device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from unknown device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 515
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 519
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected process message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_1

    .line 521
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v5, "ERROR: mCurrentDevice is null in Connected"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    move v2, v3

    .line 593
    :cond_0
    :goto_0
    return v2

    .line 525
    :cond_1
    const/4 v2, 0x1

    .line 526
    .local v2, "retValue":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 591
    goto :goto_0

    .line 529
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 530
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 534
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v9, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 536
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 537
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v3, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v4, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 545
    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    .line 546
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$802(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 547
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    .line 548
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 553
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 554
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 559
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 560
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v0, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 564
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 565
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/16 v5, 0xb

    const/16 v6, 0xa

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$6600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 567
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7002(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 569
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mPending:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 573
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    .line 574
    .local v1, "event":Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 575
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    .line 586
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 577
    :pswitch_0
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 580
    :pswitch_1
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 583
    :pswitch_2
    iget v3, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v4, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioFocusRequestEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 526
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
