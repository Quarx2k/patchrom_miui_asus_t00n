.class Lcom/android/bluetooth/hfp/HeadsetService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, "streamType":I
    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v2    # "streamType":I
    :cond_2
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "requestType":I
    if-ne v1, v4, :cond_3

    .line 115
    const-string v3, "HeadsetService"

    const-string v4, "Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    .line 118
    :cond_3
    const-string v3, "HeadsetService"

    const-string v4, "HeadsetService -  Received BluetoothDevice.ACTION_CONNECTION_ACCESS_REPLY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->handleAccessPermissionResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v1    # "requestType":I
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    const-string v3, "HeadsetService"

    const-string v4, "HeadsetService -  Received BluetoothA2dp Play State changed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const-string v3, "HeadsetService"

    const-string v4, "HeadsetService -  Received BluetoothA2dp Conn State changed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method
