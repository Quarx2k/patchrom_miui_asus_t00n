.class Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 1

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .param p2, "x1"    # Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 531
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v3

    if-nez v3, :cond_3

    .line 532
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 559
    .local v2, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v4, 0x7f040077

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->acquirePbapWakeLock()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 566
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v3, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    const-string v3, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v3, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v4, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->isWaitingAuthorization:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$702(Lcom/android/bluetooth/pbap/BluetoothPbapService;Z)Z

    .line 577
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 587
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->releasePbapWakeLock()V
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 588
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    if-nez v3, :cond_0

    .line 540
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 541
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v2, :cond_4

    .line 542
    const-string v3, "BluetoothPbapService"

    const-string v4, "mServerSocket is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 589
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    goto :goto_1

    .line 545
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$302(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 548
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 549
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-nez v3, :cond_5

    .line 550
    const-string v3, "BluetoothPbapService"

    const-string v5, "mConnSocket is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-exit v4

    goto/16 :goto_0

    .line 554
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 553
    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$402(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 554
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    :try_start_6
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_1

    .line 556
    const-string v3, "BluetoothPbapService"

    const-string v4, "getRemoteDevice() = null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->stopped:Z

    .line 603
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->interrupt()V

    .line 604
    return-void
.end method
