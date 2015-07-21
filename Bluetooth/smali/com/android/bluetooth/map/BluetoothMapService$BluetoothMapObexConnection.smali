.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
.super Ljava/lang/Object;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothMapObexConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;
    }
.end annotation


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile mInterrupted:Z

.field private mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

.field private mMasId:I

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mSupportedMessageTypes:I

.field mWaitingForConfirmation:Z

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;II)V
    .locals 3
    .param p2, "supportedMessageTypes"    # I
    .param p3, "masId"    # I

    .prologue
    const/4 v0, 0x0

    .line 552
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    .line 544
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 545
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    .line 546
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 547
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    .line 553
    const-string v0, "BluetoothMapService"

    const-string v1, "inside BluetoothMapObexConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedMessageTypes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "masId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mSupportedMessageTypes:I

    .line 557
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    .line 558
    return-void
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeConnection()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startRfcommSocketListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->initSocket()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->stopObexServerSession()V

    return-void
.end method

.method private final closeConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 664
    const-string v1, "BluetoothMapService"

    const-string v2, "MAP Service closeService in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z

    .line 667
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeServerSocket()V

    .line 668
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->shutdown()V

    .line 671
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->join()V

    .line 672
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 679
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    .line 681
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeConnectionSocket()V

    .line 682
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 685
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$202(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z

    .line 686
    const-string v1, "BluetoothMapService"

    const-string v2, "MAP Service closeService out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final declared-synchronized closeConnectionSocket()V
    .locals 4

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 655
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 656
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Connection Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 653
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothMapService"

    const-string v2, "Close Server Socket : "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 645
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 646
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close Server Socket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 640
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final initSocket()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 580
    const-string v5, "BluetoothMapService"

    const-string v6, "Map Service initSocket"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMasId is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "initSocketOK":Z
    const/16 v0, 0xa

    .line 586
    .local v0, "CREATE_RETRY_TIME":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z

    .line 589
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z

    if-nez v5, :cond_0

    .line 591
    :try_start_0
    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mSupportedMessageTypes:I

    if-ne v5, v8, :cond_1

    .line 592
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const-string v6, "Email Message Access"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    const/4 v3, 0x1

    .line 601
    :goto_2
    if-nez v3, :cond_0

    .line 603
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-nez v5, :cond_2

    .line 626
    :cond_0
    :goto_3
    if-eqz v3, :cond_4

    .line 628
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Succeed to create listening socket for mMasId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_4
    return v3

    .line 594
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const-string v6, "SMS/MMS Message Access"

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothMapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error create RfcommServerSocket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v3, 0x0

    goto :goto_2

    .line 606
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    .line 607
    .local v4, "state":I
    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3

    .line 608
    const-string v5, "BluetoothMapService"

    const-string v6, "initRfcommSocket failed as BT is (being) turned off"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 612
    :cond_3
    monitor-enter p0

    .line 614
    :try_start_2
    const-string v5, "BluetoothMapService"

    const-string v6, "wait 3 seconds"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-wide/16 v5, 0x12c

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :goto_5
    :try_start_3
    monitor-exit p0

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 616
    :catch_1
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "BluetoothMapService"

    const-string v6, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z

    goto :goto_5

    .line 620
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 631
    .end local v4    # "state":I
    :cond_4
    const-string v5, "BluetoothMapService"

    const-string v6, "Error to create listening socket after 10 try"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private final startObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    const-string v2, "BluetoothMapService"

    const-string v3, "Map Service startObexServerSession"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v2, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 695
    .local v0, "context":Landroid/content/Context;
    const-string v2, "BluetoothMapService"

    const-string v3, "after getting application context"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$100(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 698
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->initObserver(Landroid/os/Handler;I)V

    .line 699
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    .line 701
    monitor-enter p0

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;-><init>(Landroid/os/Handler;)V

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1402(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapAuthenticator;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 704
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setChallenged(Z)V

    .line 705
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setCancelled(Z)V

    .line 706
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 709
    .local v1, "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    new-instance v2, Ljavax/obex/ServerSession;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMapServer:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    .line 710
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 712
    const-string v2, "BluetoothMapService"

    const-string v3, "startObexServerSession() success!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v2, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMasId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-void

    .line 706
    .end local v1    # "transport":Lcom/android/bluetooth/map/BluetoothMapRfcommTransport;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startRfcommSocketListener()V
    .locals 3

    .prologue
    .line 562
    const-string v0, "BluetoothMapService"

    const-string v1, "Map Service startRfcommSocketListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMasId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->initSocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeConnection()V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;-><init>(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapAcceptThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->start()V

    goto :goto_0
.end method

.method private stopObexServerSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 719
    const-string v1, "BluetoothMapService"

    const-string v2, "Map Service stopObexServerSession "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMasId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->shutdown()V

    .line 726
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 736
    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mServerSession:Ljavax/obex/ServerSession;

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->deinitObserver(I)V

    .line 741
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->removeFromMapClientList(I)V

    .line 742
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeConnectionSocket()V

    .line 746
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startRfcommSocketListener()V

    .line 749
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x0

    # invokes: Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V

    .line 750
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcceptThread  close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 730
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mAcceptThread:Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection$SocketAcceptThread;

    throw v1
.end method
