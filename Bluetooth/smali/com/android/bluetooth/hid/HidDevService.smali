.class public Lcom/android/bluetooth/hid/HidDevService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidDevService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;,
        Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z = false

.field private static final MESSAGE_APPLICATION_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x2

.field private static final MESSAGE_GET_REPORT:I = 0x3

.field private static final MESSAGE_INTR_DATA:I = 0x6

.field private static final MESSAGE_SET_PROTOCOL:I = 0x5

.field private static final MESSAGE_SET_REPORT:I = 0x4

.field private static final MESSAGE_VC_UNPLUG:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

.field private mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

.field private mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

.field private final mHandler:Landroid/os/Handler;

.field private mHidDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHidDeviceState:I

.field private mNativeAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/bluetooth/hid/HidDevService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->classInitNative()V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 60
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    .line 62
    iput v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 64
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 74
    new-instance v0, Lcom/android/bluetooth/hid/HidDevService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDevService$1;-><init>(Lcom/android/bluetooth/hid/HidDevService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidDevService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidDevService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidDevService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hid/HidDevService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDevService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eq v2, p1, :cond_1

    .line 523
    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    const-string v3, "Connection state changed for unknown device, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 528
    .local v1, "prevState":I
    iput p2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHidDeviceState:I

    .line 530
    sget-object v2, Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eq v1, p2, :cond_0

    .line 537
    const/16 v2, 0x16

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/android/bluetooth/hid/HidDevService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.hid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 544
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/hid/HidDevService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative()Z
.end method

.method private static convertHalState(I)I
    .locals 1
    .param p0, "halState"    # I

    .prologue
    const/4 v0, 0x0

    .line 549
    packed-switch p0, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    return v0

    .line 551
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 553
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 557
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native disconnectNative()Z
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onApplicationStateChanged([BZ)V
    .locals 4
    .param p1, "address"    # [B
    .param p2, "registered"    # Z

    .prologue
    const/4 v1, 0x1

    .line 453
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    if-eqz p2, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 456
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 453
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onConnectStateChanged([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "state"    # I

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 466
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 463
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onGetReport(BBS)V
    .locals 3
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "bufferSize"    # S

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    if-lez p3, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 476
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 477
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    .line 474
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 473
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onIntrData(B[B)V
    .locals 4
    .param p1, "reportId"    # B
    .param p2, "data"    # [B

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 505
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 506
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 507
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    .line 503
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onSetProtocol(B)V
    .locals 3
    .param p1, "protocol"    # B

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 496
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 497
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit p0

    return-void

    .line 495
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onSetReport(BB[B)V
    .locals 4
    .param p1, "reportType"    # B
    .param p2, "reportId"    # B
    .param p3, "data"    # [B

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 485
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 486
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 487
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 488
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 483
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onVirtualCableUnplug()V
    .locals 3

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 514
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z
.end method

.method private native replyReportNative(BB[B)Z
.end method

.method private native reportErrorNative(B)Z
.end method

.method private native sendReportNative(I[B)Z
.end method

.method private native unplugNative()Z
.end method

.method private native unregisterAppNative()Z
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->cleanupNative()V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 447
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized connect()Z
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->connectNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized disconnect()Z
    .locals 1

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->disconnectNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;-><init>(Lcom/android/bluetooth/hid/HidDevService;)V

    return-object v0
.end method

.method declared-synchronized registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 8
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .param p2, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p3, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p5, "callback"    # Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .prologue
    const/4 v7, 0x0

    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 370
    :goto_0
    monitor-exit p0

    return v0

    .line 367
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 368
    iput-object p5, p0, Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 370
    iget-object v1, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->name:Ljava/lang/String;

    iget-object v2, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->description:Ljava/lang/String;

    iget-object v3, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->provider:Ljava/lang/String;

    iget-byte v4, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->subclass:B

    iget-object v5, p2, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->descriptors:[B

    if-nez p3, :cond_1

    move-object v6, v7

    :goto_1
    if-nez p4, :cond_2

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/hid/HidDevService;->registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->toArray()[I

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->toArray()[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_2

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized replyReport(BB[B)Z
    .locals 1
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDevService;->replyReportNative(BB[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reportError(B)Z
    .locals 1
    .param p1, "error"    # B

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDevService;->reportErrorNative(B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendReport(I[B)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->sendReportNative(I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected start()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 425
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->initNative()V

    .line 426
    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mNativeAvailable:Z

    .line 428
    return v0
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized unplug()Z
    .locals 1

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->unplugNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService;->unregisterAppNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
