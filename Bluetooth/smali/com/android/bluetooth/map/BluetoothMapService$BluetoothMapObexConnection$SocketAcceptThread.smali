.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketAcceptThread"
.end annotation


# instance fields
.field private mMasId:I

.field private stopped:Z

.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;I)V
    .locals 2
    .param p2, "masId"    # I

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->stopped:Z

    .line 763
    const-string v0, "BluetoothMapService"

    const-string v1, "inside SocketAcceptThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->mMasId:I

    .line 765
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 769
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1600(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    if-nez v4, :cond_1

    .line 770
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->initSocket()Z
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1700(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->removeFromMapClientList(I)V

    .line 776
    :goto_1
    iget-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->stopped:Z

    if-nez v4, :cond_0

    .line 778
    :try_start_0
    const-string v4, "BluetoothMapService"

    const-string v5, "Accepting socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1600(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 780
    .local v2, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-nez v2, :cond_2

    .line 781
    const-string v4, "BluetoothMapService"

    const-string v5, "mServerSocket is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    .end local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v0

    .line 844
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->stopped:Z

    .line 845
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accept exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v5

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$502(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 785
    const-string v4, "BluetoothMapService"

    const-string v5, "Accepted socket connection..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 787
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-nez v4, :cond_3

    .line 788
    const-string v4, "BluetoothMapService"

    const-string v6, "mConnSocket is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    monitor-exit v5

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 791
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4, v6}, Lcom/android/bluetooth/map/BluetoothMapService;->access$102(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 792
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    :try_start_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_4

    .line 794
    const-string v4, "BluetoothMapService"

    const-string v5, "getRemoteDevice() = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 798
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 800
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1800()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 801
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const v5, 0x7f040077

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 803
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->isAllowedConnection(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 804
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 805
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$502(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    goto/16 :goto_1

    .line 809
    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->addToMapClientList(Ljava/lang/String;I)V

    .line 810
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v3

    .line 811
    .local v3, "trust":Z
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GetTrustState() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 813
    if-eqz v3, :cond_7

    .line 815
    :try_start_6
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming connection accepted from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1800()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " automatically as trusted device"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 842
    :goto_2
    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->stopped:Z

    goto/16 :goto_1

    .line 818
    :catch_1
    move-exception v0

    .line 819
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch exception starting obex server session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 823
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->mMasId:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->setWaitingForConfirmation(I)V

    .line 824
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v5, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 825
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v4, v1, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 833
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "waiting for authorization for connection from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1800()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v5, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->removeTimeoutMsg:Z
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$302(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 839
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v4, v4, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->this$1:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    iget-object v5, v5, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7530

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->stopped:Z

    .line 852
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->interrupt()V

    .line 853
    return-void
.end method
