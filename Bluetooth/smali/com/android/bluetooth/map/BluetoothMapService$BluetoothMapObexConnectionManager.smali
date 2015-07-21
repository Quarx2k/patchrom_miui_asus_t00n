.class Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothMapObexConnectionManager"
.end annotation


# instance fields
.field private MapClientList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 5

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    .line 374
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    .line 377
    const/4 v1, 0x2

    .line 379
    .local v1, "numberOfSupportedInstances":I
    const-string v2, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothMapObexConnectionManager: mIsEmailEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mIsEmailEnabled:Z
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapService;->access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 384
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->MAS_INS_INFO:[I

    aget v4, v4, v0

    invoke-direct {v3, p1, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    return-void
.end method


# virtual methods
.method public addToMapClientList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .param p2, "masId"    # I

    .prologue
    .line 506
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to mapClient List masid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bdaddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    return-void
.end method

.method public closeAll()V
    .locals 4

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 484
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 488
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    const/4 v2, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1002(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Z)Z

    .line 489
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->closeConnection()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1100(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V

    goto :goto_0

    .line 491
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 500
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 501
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mInterrupted:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1002(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Z)Z

    goto :goto_0

    .line 503
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_0
    return-void
.end method

.method public initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 391
    :try_start_0
    const-string v3, "BluetoothMapService"

    const-string v4, "inside initiateObexServerSession"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 393
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    if-eqz v3, :cond_0

    .line 394
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    .line 395
    const-string v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling startobexServerSession for masid  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mMasId:I
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$600(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startObexServerSession(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$700(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "ex":Ljava/io/IOException;
    const-string v3, "BluetoothMapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught the error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public isAllowedConnection(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "masId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "remoteAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 518
    const-string v1, "BluetoothMapService"

    const-string v3, "Connection request from unknown device"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 537
    :goto_0
    return v1

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    xor-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 523
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow Connection request from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "when no other device is connected"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 525
    goto :goto_0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    xor-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow Connection request from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v2, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "when mas"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "is connected to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    xor-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 529
    goto/16 :goto_0

    .line 531
    :cond_2
    const-string v3, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dont Allow Connection request from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "when mas"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "is connected to"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    xor-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 533
    goto/16 :goto_0

    .line 536
    :cond_3
    const-string v1, "BluetoothMapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection not allowed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 537
    goto/16 :goto_0
.end method

.method public removeFromMapClientList(I)V
    .locals 3
    .param p1, "masId"    # I

    .prologue
    .line 511
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing from the list, masid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->MapClientList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method public setWaitingForConfirmation(I)V
    .locals 4
    .param p1, "masId"    # I

    .prologue
    .line 405
    const-string v1, "BluetoothMapService"

    const-string v2, "Inside setWaitingForConfirmation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 408
    .local v0, "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    .line 413
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to set waiting for user confirmation for MAS id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v1, "BluetoothMapService"

    const-string v2, "out of index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAll()V
    .locals 3

    .prologue
    .line 494
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 495
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->startRfcommSocketListener()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$1200(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V

    goto :goto_0

    .line 497
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_0
    return-void
.end method

.method public stopObexServerSession(I)V
    .locals 7
    .param p1, "masId"    # I

    .prologue
    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "serverSessionConnected":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 418
    .local v1, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v1    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 424
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 426
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 430
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    .line 431
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 432
    .local v0, "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 433
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$900(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V

    .line 443
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :goto_1
    return-void

    .line 435
    .restart local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_3
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v4, "BluetoothMapService"

    const-string v5, "when there is no connected socket"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    .end local v0    # "connect":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_4
    const-string v4, "BluetoothMapService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to stop OBEX Server session for MAS id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v4, "BluetoothMapService"

    const-string v5, "out of index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopObexServerSessionAll()V
    .locals 4

    .prologue
    .line 470
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 472
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v3, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 475
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 476
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$900(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V

    goto :goto_0

    .line 479
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_2
    return-void
.end method

.method public stopObexServerSessionWaiting()V
    .locals 5

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 448
    .local v2, "serverSessionConnected":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 449
    .local v0, "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 455
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 456
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapService;->access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 457
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->this$0:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    invoke-static {v3, v4}, Lcom/android/bluetooth/map/BluetoothMapService;->access$802(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnectionManager;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;

    .line 462
    .restart local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    # getter for: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$500(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    if-eqz v3, :cond_3

    .line 463
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->mWaitingForConfirmation:Z

    .line 464
    # invokes: Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->stopObexServerSession()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;->access$900(Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;)V

    goto :goto_1

    .line 467
    .end local v0    # "connection":Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapObexConnection;
    :cond_4
    return-void
.end method
