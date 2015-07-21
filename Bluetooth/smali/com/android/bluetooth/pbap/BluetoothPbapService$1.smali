.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 610
    const-string v2, "BluetoothPbapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler(): got msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 651
    :goto_0
    :sswitch_0
    return-void

    .line 614
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 621
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 623
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 627
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 630
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v3, -0xf4242

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    .line 633
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 636
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    .line 644
    :sswitch_5
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v3, "com.android.bluetooth.pbap.authchall"

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V

    .line 645
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
    .end sparse-switch
.end method
