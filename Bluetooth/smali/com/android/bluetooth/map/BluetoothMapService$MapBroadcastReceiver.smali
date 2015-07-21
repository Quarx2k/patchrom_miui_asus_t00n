.class Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapService$1;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 862
    const-string v6, "BluetoothMapService"

    const-string v7, "onReceive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "action":Ljava/lang/String;
    const-string v6, "BluetoothMapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive, action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 866
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 868
    .local v4, "state":I
    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 869
    const-string v6, "BluetoothMapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE_TURNING_OFF removeTimeoutMsg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 872
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 876
    .local v5, "timeoutIntent":Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 877
    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v5, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v5, v7}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 880
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 881
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 885
    .end local v5    # "timeoutIntent":Landroid/content/Intent;
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 954
    .end local v4    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 886
    .restart local v4    # "state":I
    :cond_2
    const/16 v6, 0xc

    if-ne v4, v6, :cond_1

    .line 887
    const-string v6, "BluetoothMapService"

    const-string v7, "STATE_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 892
    .end local v4    # "state":I
    :cond_3
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 893
    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 895
    .local v2, "requestType":I
    const-string v6, "BluetoothMapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ACTION_CONNECTION_ACCESS_REPLY:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isWaitingAuthorization:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapService;->access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v2, v12, :cond_1

    .line 903
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 904
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 905
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 909
    :cond_4
    const-string v6, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 913
    const-string v6, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 914
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v3

    .line 915
    .local v3, "result":Z
    const-string v6, "BluetoothMapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTrust() result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .end local v3    # "result":Z
    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 921
    :cond_6
    const-string v6, "BluetoothMapService"

    const-string v7, "calling initiateObexServerSession"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 925
    :cond_7
    const-string v6, "BluetoothMapService"

    const-string v7, "calling stopObexServerSessionWaiting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->stopObexServerSessionWaiting()V

    goto/16 :goto_0

    .line 928
    .end local v2    # "requestType":I
    :cond_8
    const-string v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$200(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 930
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 932
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_9

    if-nez v1, :cond_a

    .line 933
    :cond_9
    const-string v6, "BluetoothMapService"

    const-string v7, "Unexpected error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :cond_a
    const-string v6, "BluetoothMapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACL disconnected for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$300(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 941
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .restart local v5    # "timeoutIntent":Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 946
    const-string v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v5, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v5, v7}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 949
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 950
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 951
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v6, v6, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->stopObexServerSessionWaiting()V

    goto/16 :goto_0
.end method
