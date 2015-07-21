.class Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;
.super Lcom/android/internal/util/State;
.source "HandsfreeClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;

    .prologue
    .line 2067
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x0

    .line 2168
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio changed on disconnected device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :goto_0
    return-void

    .line 2173
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2194
    const-string v0, "HandsfreeClientStateMachine"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2175
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2176
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 2178
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 2180
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 2184
    :cond_1
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "hfp_enable=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "hfp_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2186
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, p2, v2, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2191
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mConnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$9000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 2146
    packed-switch p1, :pswitch_data_0

    .line 2161
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :goto_0
    return-void

    .line 2148
    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    invoke-direct {p0, v3, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 2151
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2154
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2155
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2157
    :cond_0
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 2070
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter AudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 2073
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2201
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit AudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$9100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 2204
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2077
    monitor-enter p0

    :try_start_0
    const-string v3, "HandsfreeClientStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioOn process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v3, :sswitch_data_0

    .line 2141
    :goto_0
    monitor-exit p0

    return v2

    .line 2087
    :sswitch_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 2088
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2141
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2091
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V

    .line 2102
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2103
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 2105
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2106
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 2107
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "abandonAudioFocus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 2111
    :cond_2
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "hfp_enable=false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_enable=false"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2113
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2077
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2119
    :sswitch_2
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    .line 2123
    .local v1, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iget v3, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 2125
    :pswitch_0
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioOn connection state changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget-object v3, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 2130
    :pswitch_1
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioOn audio state changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget v2, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget-object v3, v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2085
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 2123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
