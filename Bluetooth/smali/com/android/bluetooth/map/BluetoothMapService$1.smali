.class Lcom/android/bluetooth/map/BluetoothMapService$1;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 166
    const-string v2, "BluetoothMapService"

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

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 170
    :sswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->startAll()V

    goto :goto_0

    .line 175
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 181
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v2, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 182
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->stopObexServerSessionWaiting()V

    goto :goto_0

    .line 185
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 186
    .local v1, "masId":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->stopObexServerSession(I)V

    goto :goto_0

    .line 194
    .end local v1    # "masId":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnectMap(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x1388 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
    .end sparse-switch
.end method
