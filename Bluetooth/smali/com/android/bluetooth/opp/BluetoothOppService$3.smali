.class Lcom/android/bluetooth/opp/BluetoothOppService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 385
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 392
    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotifier()V

    .line 407
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 411
    :cond_1
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-eqz v4, :cond_0

    .line 424
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iput-boolean v5, v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    goto :goto_0

    .line 426
    :cond_2
    const-string v4, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 429
    .local v2, "newState":I
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 431
    .local v3, "oldState":I
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 435
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 438
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-eqz v4, :cond_0

    .line 439
    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    .line 441
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    goto :goto_0

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iput-boolean v5, v4, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
