.class public Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HandsfreeClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandsfreeClientService"

.field private static sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 99
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    .param p1, "x1"    # [I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized clearHandsfreeClientService()V
    .locals 2

    .prologue
    .line 439
    const-class v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit v0

    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHandsfreeClientService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    .locals 2

    .prologue
    .line 405
    const-class v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setHandsfreeClientService(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    .line 422
    const-class v1, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sput-object p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sHandsfreeClientService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :cond_0
    monitor-exit v1

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 583
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 585
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 587
    const/4 v2, 0x0

    .line 592
    :goto_0
    return v2

    .line 589
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 590
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 591
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->cleanup()V

    .line 95
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->clearHandsfreeClientService()V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 443
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v1

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 451
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    move v1, v2

    .line 457
    goto :goto_0
.end method

.method connectAudio()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 550
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->isAudioOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    .line 558
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 650
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 652
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 654
    const/4 v2, 0x0

    .line 660
    :goto_0
    return v2

    .line 657
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 658
    .local v1, "msg":Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    const/4 v2, 0x1

    .line 664
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 666
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 668
    const/4 v2, 0x0

    .line 673
    :goto_0
    return v2

    .line 670
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 671
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 672
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 461
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 464
    .local v0, "connectionState":I
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 466
    const/4 v1, 0x0

    .line 470
    :goto_0
    return v1

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method disconnectAudio()Z
    .locals 2

    .prologue
    .line 562
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    .line 567
    const/4 v0, 0x1

    goto :goto_0
.end method

.method enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 623
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 625
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 627
    const/4 v2, 0x0

    .line 633
    :goto_0
    return v2

    .line 630
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 631
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 632
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 711
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 713
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 715
    const/4 v2, 0x0

    .line 720
    :goto_0
    return v2

    .line 717
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 719
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 484
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 724
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 726
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 727
    const/4 v1, 0x0

    .line 729
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentAgEvents()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 733
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 735
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 736
    const/4 v1, 0x0

    .line 738
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentAgFeatures()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 704
    .local v0, "connectionState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 705
    const/4 v1, 0x0

    .line 707
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getCurrentCalls()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 690
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 692
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 694
    const/4 v2, 0x0

    .line 698
    :goto_0
    return v2

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 697
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "HandsfreeClientService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 502
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "priority":I
    return v0
.end method

.method holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 571
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 573
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 575
    const/4 v2, 0x0

    .line 579
    :goto_0
    return v2

    .line 577
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 578
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;-><init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V

    return-object v0
.end method

.method redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 637
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 639
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 641
    const/4 v2, 0x0

    .line 646
    :goto_0
    return v2

    .line 644
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 645
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 596
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 598
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 600
    const/4 v2, 0x0

    .line 605
    :goto_0
    return v2

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 604
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    const/4 v2, 0x1

    .line 677
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 679
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 681
    const/4 v2, 0x0

    .line 686
    :goto_0
    return v2

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 684
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 685
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 490
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    .line 66
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->setHandsfreeClientService(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V

    .line 74
    const/4 v2, 0x1

    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HandsfreeClientService"

    const-string v3, "Unable to register broadcat receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 511
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 513
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 518
    :goto_0
    return v1

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->doQuit()V

    .line 87
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HandsfreeClientService"

    const-string v2, "Unable to unregister broadcast receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 522
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 527
    .local v0, "connectionState":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 532
    :goto_0
    return v1

    .line 531
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 609
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 611
    .local v0, "connectionState":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 613
    const/4 v2, 0x0

    .line 619
    :goto_0
    return v2

    .line 616
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 617
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 618
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
