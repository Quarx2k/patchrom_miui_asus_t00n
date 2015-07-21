.class public Lcom/android/bluetooth/hid/HidService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z = false

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x3

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final MESSAGE_GET_IDLE_TIME:I = 0xd

.field private static final MESSAGE_GET_PROTOCOL_MODE:I = 0x4

.field private static final MESSAGE_GET_REPORT:I = 0x8

.field private static final MESSAGE_ON_GET_IDLE_TIME:I = 0xe

.field private static final MESSAGE_ON_GET_PROTOCOL_MODE:I = 0x6

.field private static final MESSAGE_ON_GET_REPORT:I = 0x9

.field private static final MESSAGE_ON_VIRTUAL_UNPLUG:I = 0xc

.field private static final MESSAGE_SEND_DATA:I = 0xb

.field private static final MESSAGE_SET_IDLE_TIME:I = 0xf

.field private static final MESSAGE_SET_PRIORITY:I = 0x10

.field private static final MESSAGE_SET_PROTOCOL_MODE:I = 0x7

.field private static final MESSAGE_SET_REPORT:I = 0xa

.field private static final MESSAGE_VIRTUAL_UNPLUG:I = 0x5

.field private static final TAG:Ljava/lang/String; = "HidService"

.field private static sHidService:Lcom/android/bluetooth/hid/HidService;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInputDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 76
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->classInitNative()V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    new-instance v0, Lcom/android/bluetooth/hid/HidService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidService$1;-><init>(Lcom/android/bluetooth/hid/HidService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->connectHidNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->virtualUnPlugNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hid/HidService;[BB)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # B

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setProtocolModeNative([BB)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hid/HidService;[BBBI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidService;->getReportNative([BBBI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # B
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidService;->setReportNative([BBLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getIdleTimeNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/hid/HidService;[BB)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # B

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setIdleTimeNative([BB)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hid/HidService;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setPriorityNative([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hid/HidService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hid/HidService;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getProtocolModeNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hid/HidService;
    .param p1, "x1"    # [B

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    .line 653
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 654
    .local v2, "prevStateInteger":Ljava/lang/Integer;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 656
    .local v1, "prevState":I
    :goto_0
    if-ne v1, p2, :cond_1

    .line 657
    const-string v3, "HidService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_1
    return-void

    .line 654
    .end local v1    # "prevState":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 660
    .restart local v1    # "prevState":I
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V

    .line 666
    const/4 v3, 0x4

    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/android/bluetooth/hid/HidService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    .line 668
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 670
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # I

    .prologue
    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 696
    const-string v1, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 697
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 698
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 679
    const-string v1, "android.bluetooth.BluetoothInputDevice.extra.PROTOCOL_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .prologue
    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 688
    const-string v1, "android.bluetooth.BluetoothInputDevice.extra.VIRTUAL_UNPLUG_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static declared-synchronized clearHidService()V
    .locals 2

    .prologue
    .line 144
    const-class v0, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native connectHidNative([B)Z
.end method

.method private static convertHalState(I)I
    .locals 4
    .param p0, "halState"    # I

    .prologue
    const/4 v0, 0x0

    .line 715
    packed-switch p0, :pswitch_data_0

    .line 725
    const-string v1, "HidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad hid connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_0
    :pswitch_0
    return v0

    .line 717
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 719
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 723
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 715
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private native disconnectHidNative([B)Z
.end method

.method public static declared-synchronized getHidService()Lcom/android/bluetooth/hid/HidService;
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native getIdleTimeNative([B)Z
.end method

.method private native getProtocolModeNative([B)Z
.end method

.method private native getReportNative([BBBI)Z
.end method

.method private native initializeNative()V
.end method

.method private okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 703
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 706
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 710
    :cond_1
    const/4 v1, 0x0

    .line 712
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onConnectStateChanged([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "state"    # I

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 646
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 647
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 648
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 649
    return-void
.end method

.method private onGetIdleTime([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "idleTime"    # I

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 639
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 641
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method

.method private onGetProtocolMode([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "mode"    # I

    .prologue
    .line 624
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 625
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 627
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    return-void
.end method

.method private onVirtualUnplug([BI)V
    .locals 3
    .param p1, "address"    # [B
    .param p2, "status"    # I

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 634
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    return-void
.end method

.method private native sendDataNative([BLjava/lang/String;)Z
.end method

.method private static declared-synchronized setHidService(Lcom/android/bluetooth/hid/HidService;)V
    .locals 2
    .param p0, "instance"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    .line 129
    const-class v1, Lcom/android/bluetooth/hid/HidService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sput-object p0, Lcom/android/bluetooth/hid/HidService;->sHidService:Lcom/android/bluetooth/hid/HidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native setIdleTimeNative([BB)Z
.end method

.method private native setPriorityNative([BI)Z
.end method

.method private native setProtocolModeNative([BB)Z
.end method

.method private native setReportNative([BBLjava/lang/String;)Z
.end method

.method private native virtualUnPlugNative([B)Z
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService;->cleanupNative()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 109
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->clearHidService()V

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 432
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    const-string v2, "HidService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hid Device not disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return v1

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 438
    const-string v2, "HidService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hid Device PRIORITY_OFF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 444
    goto :goto_0
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 448
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 450
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    const/4 v1, 0x1

    return v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 10
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
    .line 462
    const-string v8, "android.permission.BLUETOOTH"

    const-string v9, "Need BLUETOOTH permission"

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v5, "inputDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 466
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 467
    .local v4, "inputDeviceState":I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget v7, v0, v3

    .line 468
    .local v7, "state":I
    if-ne v7, v4, :cond_1

    .line 469
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    .end local v0    # "arr$":[I
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":I
    .end local v4    # "inputDeviceState":I
    .end local v6    # "len$":I
    .end local v7    # "state":I
    :cond_2
    return-object v5
.end method

.method getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 596
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 599
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 600
    const/4 v2, 0x0

    .line 604
    :goto_0
    return v2

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 603
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 604
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "HidService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 492
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 497
    .local v0, "priority":I
    return v0
.end method

.method getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 502
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 505
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 510
    :goto_0
    return v2

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    const/4 v2, 0x1

    goto :goto_0
.end method

.method getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I

    .prologue
    .line 542
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 545
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 546
    const/4 v3, 0x0

    .line 556
    :goto_0
    return v3

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 549
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 552
    const-string v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 553
    const-string v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 555
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 556
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;-><init>(Lcom/android/bluetooth/hid/HidService;)V

    return-object v0
.end method

.method sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Ljava/lang/String;

    .prologue
    .line 578
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 581
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 582
    const/4 v1, 0x0

    .line 585
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # B

    .prologue
    .line 608
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 611
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 612
    const/4 v3, 0x0

    .line 620
    :goto_0
    return v3

    .line 614
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 615
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 618
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 619
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 478
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 487
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    const/4 v1, 0x1

    return v1
.end method

.method setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    .line 528
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 531
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 532
    const/4 v2, 0x0

    .line 538
    :goto_0
    return v2

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 537
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    const/4 v2, 0x1

    goto :goto_0
.end method

.method setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 563
    .local v2, "state":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 564
    const/4 v3, 0x0

    .line 573
    :goto_0
    return v3

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 567
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 569
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 570
    const-string v3, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 572
    iget-object v3, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 573
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected start()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;

    .line 89
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService;->initializeNative()V

    .line 90
    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidService;->mNativeAvailable:Z

    .line 91
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidService;->setHidService(Lcom/android/bluetooth/hid/HidService;)V

    .line 92
    return v1
.end method

.method protected stop()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 516
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hid/HidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 519
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 520
    const/4 v2, 0x0

    .line 524
    :goto_0
    return v2

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 523
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    const/4 v2, 0x1

    goto :goto_0
.end method
