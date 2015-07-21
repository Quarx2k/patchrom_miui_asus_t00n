.class Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HandsfreeClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$1;

    .prologue
    .line 1507
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2001
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2002
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio changed on disconnected device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2056
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio State Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bad state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2008
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    .line 2011
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v2, v6}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 2013
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2014
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "stopping ring and request focus for call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    .line 2017
    :cond_2
    const/4 v1, 0x2

    .line 2018
    .local v1, "newAudioMode":I
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 2019
    .local v0, "currMode":I
    if-eq v0, v1, :cond_3

    .line 2021
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 2023
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioMode Setting audio mode from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2027
    :cond_3
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "hfp_enable=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const-string v2, "HandsfreeClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioWbs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2030
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "Setting sampling rate as 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=16000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2037
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_enable=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2038
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v6, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 2040
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioOn:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;
    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$AudioOn;

    move-result-object v3

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2034
    :cond_4
    const-string v2, "HandsfreeClientStateMachine"

    const-string v3, "Setting sampling rate as 8000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "hfp_set_sampling_rate=8000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 2043
    .end local v0    # "currMode":I
    .end local v1    # "newAudioMode":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 2044
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v5, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2048
    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2049
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioState:I
    invoke-static {v2, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8202(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 2050
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v2, p2, v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    .line 2006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1978
    packed-switch p1, :pswitch_data_0

    .line 1993
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

    .line 1996
    :goto_0
    return-void

    .line 1980
    :pswitch_0
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "Connected disconnects."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1986
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1987
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mDisconnected:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Disconnected;

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1989
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

    .line 1978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    .prologue
    .line 1967
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.handsfreeclient.profile.action.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1968
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.handsfreeclient.extra.RESULT_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1969
    iget v1, p1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1970
    const-string v1, "android.bluetooth.handsfreeclient.extra.CME_CODE"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1972
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1973
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1974
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1510
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioWbs:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    .line 1513
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 2063
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_0
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected process message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    .line 1961
    const/4 v0, 0x0

    .line 1963
    :goto_0
    monitor-exit p0

    return v0

    .line 1527
    :sswitch_0
    :try_start_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 1528
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1963
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1533
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1536
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1538
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v9, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1517
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1544
    .restart local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 1547
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 1548
    .local v8, "dev":Landroid/bluetooth/BluetoothDevice;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x3

    const/4 v2, 0x2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1553
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v8}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x2

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v8, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 1562
    .end local v8    # "dev":Landroid/bluetooth/BluetoothDevice;
    :sswitch_3
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->connectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1563
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1568
    :sswitch_4
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->disconnectAudioNative([B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1569
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t connect Audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1573
    :sswitch_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->startVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1575
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x5

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1577
    :cond_3
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1582
    :sswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->stopVoiceRecognitionNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1584
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x6

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1586
    :cond_4
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1591
    :sswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1592
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1595
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1600
    :sswitch_8
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfp_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1603
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1606
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setVolumeNative(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x8

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1611
    :sswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1612
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x9

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1614
    :cond_7
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Cannot redial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1618
    :sswitch_a
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->dialNative(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1619
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0xa

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1621
    :cond_8
    const-string v1, "HandsfreeClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1625
    :sswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->dialMemoryNative(I)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1626
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0xb

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1628
    :cond_9
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Cannot dial with a given location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1632
    :sswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1635
    :sswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->rejectCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    goto/16 :goto_1

    .line 1638
    :sswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->holdCall()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    goto/16 :goto_1

    .line 1641
    :sswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->terminateCall(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1644
    :sswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->enterPrivateMode(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1647
    :sswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->explicitCallTransfer()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    goto/16 :goto_1

    .line 1650
    :sswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-byte v1, v1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendDtmfNative(B)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1651
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x11

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1653
    :cond_a
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t send DTMF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1657
    :sswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->retrieveSubscriberInfoNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1658
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x34

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1660
    :cond_b
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1664
    :sswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->requestLastVoiceTagNumberNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1665
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x13

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1667
    :cond_c
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t get last VTAG number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1671
    :sswitch_15
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsStart()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    goto/16 :goto_1

    .line 1674
    :sswitch_16
    const/4 v11, 0x0

    .line 1675
    .local v11, "intent":Landroid/content/Intent;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;

    .line 1680
    .local v10, "event":Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 1955
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1682
    :pswitch_0
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Connection state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1687
    :pswitch_1
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Audio state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 1692
    :pswitch_2
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Network state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$502(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1696
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.NETWORK_STATUS"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1700
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    if-nez v0, :cond_d

    .line 1702
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1703
    const-string v0, "android.bluetooth.handsfreeclient.extra.OPERATOR_NAME"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1707
    :cond_d
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1708
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkState:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCurrentOperatorNameNative()Z
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1713
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v1, 0x33

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addQueuedAction(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1715
    :cond_e
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ERROR: Couldn\'t querry operator name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1720
    :pswitch_3
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Roaming state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkType:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1724
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.NETWORK_ROAMING"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1727
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1728
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1731
    :pswitch_4
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorNetworkSignal:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1735
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1736
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1738
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1739
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1742
    :pswitch_5
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mIndicatorBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1746
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1747
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.BATTERY_LEVEL"

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1749
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1750
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1753
    :pswitch_6
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Operator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mOperatorName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1757
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.OPERATOR_NAME"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1761
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1764
    :pswitch_7
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Voice recognition state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1769
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1770
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1772
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1773
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1777
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1780
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallSetupIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$6900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1783
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateCallHeldIndicator(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1786
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateRespAndHold(I)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7100(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)V

    goto/16 :goto_1

    .line 1789
    :pswitch_c
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->updateClip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1792
    :pswitch_d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->addCallWaiting(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7300(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1795
    :pswitch_e
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v0

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-eq v0, v1, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1797
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1798
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.IN_BAND_RING"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mInBandRingtone:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1801
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1805
    :pswitch_f
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt3:I

    iget-object v3, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget v4, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt4:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    :goto_2
    iget v5, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_3
    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsUpdate(IILjava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IILjava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x0

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    goto :goto_3

    .line 1815
    :pswitch_10
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_11

    .line 1816
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1818
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgsFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5302(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1819
    :cond_11
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1820
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt2:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1821
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVgmFromStack:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5102(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Z)Z

    goto/16 :goto_1

    .line 1820
    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 1825
    :pswitch_11
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mQueuedActions:Ljava/util/Queue;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 1828
    .local v13, "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v13, :cond_13

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_14

    .line 1829
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->clearPendingAction()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    goto/16 :goto_1

    .line 1833
    :cond_14
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: command result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queuedAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1913
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1839
    :sswitch_17
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_15

    .line 1840
    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_16

    .line 1841
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    .line 1848
    :cond_15
    :goto_5
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.VOICE_RECOGNITION"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1852
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1853
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1844
    :cond_16
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mVoiceRecognitionActive:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1702(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    goto :goto_5

    .line 1856
    :sswitch_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->queryCallsDone()V
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7500(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)V

    goto/16 :goto_1

    .line 1859
    :sswitch_19
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_17

    .line 1860
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1862
    :cond_17
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->callsInState(I)I
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;I)I

    move-result v0

    if-nez v0, :cond_19

    .line 1863
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 1865
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1867
    :cond_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCall([I)Landroid/bluetooth/BluetoothHandsfreeClientCall;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7800(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;[I)Landroid/bluetooth/BluetoothHandsfreeClientCall;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7600(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 1869
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->acceptCall(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$5700(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;IZ)V

    goto/16 :goto_1

    .line 1873
    :cond_19
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1883
    :sswitch_1a
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1a

    .line 1884
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mPendingAction:Landroid/util/Pair;
    invoke-static {v0, v13}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7602(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_1

    .line 1886
    :cond_1a
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1892
    :sswitch_1b
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1893
    iget-object v6, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/BluetoothHandsfreeClientCall;

    .line 1895
    .local v6, "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x7

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->setCallState(Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V
    invoke-static {v0, v6, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$7900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Landroid/bluetooth/BluetoothHandsfreeClientCall;I)V

    .line 1897
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mCalls:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHandsfreeClientCall;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1899
    .end local v6    # "c":Landroid/bluetooth/BluetoothHandsfreeClientCall;
    :cond_1b
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1903
    :sswitch_1c
    iget v0, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueInt:I

    if-eqz v0, :cond_0

    .line 1904
    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;)V

    goto/16 :goto_1

    .line 1920
    .end local v13    # "queuedAction":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :pswitch_12
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    # setter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1921
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.AG_EVENT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.SUBSCRIBER_INFO"

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mSubscriberInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$1400(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1925
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1928
    :pswitch_13
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v0, "org.codeaurora.handsfreeclient.profile.action.LAST_VTAG"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v0, "android.bluetooth.handsfreeclient.extra.NUMBER"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1931
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, v10, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1932
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v11, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1935
    :pswitch_14
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "start ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1937
    const-string v0, "HandsfreeClientStateMachine"

    const-string v1, "ring already playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1940
    :cond_1c
    const/4 v12, 0x1

    .line 1941
    .local v12, "newAudioMode":I
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    .line 1942
    .local v7, "currMode":I
    if-eq v7, v12, :cond_1d

    .line 1944
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 1946
    const-string v0, "HandsfreeClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode Setting audio mode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 1950
    :cond_1d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->access$8000(Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1525
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x34 -> :sswitch_13
        0x64 -> :sswitch_16
    .end sparse-switch

    .line 1680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_b
        :pswitch_e
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 1836
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_17
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0xe -> :sswitch_1a
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x32 -> :sswitch_18
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1b
    .end sparse-switch
.end method
