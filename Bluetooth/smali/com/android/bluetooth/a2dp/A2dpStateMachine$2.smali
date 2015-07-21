.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "focusChange"    # I

    .prologue
    const/4 v4, 0x1

    .line 959
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChangeListener  focuschange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 960
    packed-switch p1, :pswitch_data_0

    .line 996
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 962
    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mService:Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getLastConnectedA2dpSepType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 966
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->disconnectA2dpNative([B)Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    .line 968
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 969
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandonAudioFocus returned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 972
    .end local v0    # "status":I
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$7800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 973
    .restart local v0    # "status":I
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandonAudioFocus returned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 977
    .end local v0    # "status":I
    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 981
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->suspendA2dpNative()V
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$9900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    goto/16 :goto_0

    .line 986
    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string v2, " Received Focus Gain"

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$10000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->informAudioFocusStateNative(I)V
    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$8100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 988
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$10100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$2700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # getter for: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$2;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpStateMachine;->resumeA2dpNative()V
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$10200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    goto/16 :goto_0

    .line 960
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
