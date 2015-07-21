.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 525
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    .line 526
    const-string v3, "BtOppTransfer"

    const-string v4, "Receive ACTION_ACL_DISCONNECTED, device null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v3

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez v3, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->removeMessages(I)V

    .line 540
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
