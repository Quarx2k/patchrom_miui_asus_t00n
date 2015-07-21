.class public Lcom/android/bluetooth/ble/app/MiBandDevice;
.super Lcom/android/bluetooth/ble/app/AlertBleDevice;
.source "MiBandDevice.java"


# static fields
.field private static final ALERT_CLOCK:[B

.field private static final ALERT_INCALL:[B

.field private static final ALERT_SMS:[B

.field private static final D:Z = true

.field private static final DATA_CANCEL:[B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    const-class v0, Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_CLOCK:[B

    .line 23
    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_INCALL:[B

    .line 24
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_SMS:[B

    .line 25
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->DATA_CANCEL:[B

    return-void

    .line 22
    :array_0
    .array-data 1
        -0x1t
        -0x18t
        0x3t
        -0x18t
        0x3t
        0x5t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/android/bluetooth/ble/app/MiBandDevice$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiBandDevice$1;-><init>(Lcom/android/bluetooth/ble/app/MiBandDevice;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBandDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    .line 54
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBandDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBandDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    .line 55
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiBandDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiBandDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    .line 56
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlertDataForCancel()[B
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->DATA_CANCEL:[B

    return-object v0
.end method

.method getAlertDataForClock()[B
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_CLOCK:[B

    return-object v0
.end method

.method getAlertDataForIncall()[B
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_INCALL:[B

    return-object v0
.end method

.method getAlertDataForSMS()[B
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBandDevice;->ALERT_SMS:[B

    return-object v0
.end method

.method public bridge synthetic getDeviceType()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyProperty(I[B)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->notifyProperty(I[B)V

    return-void
.end method

.method onDeviceReady()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/ble/app/MiBandDevice$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/app/MiBandDevice$2;-><init>(Lcom/android/bluetooth/ble/app/MiBandDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method

.method public bridge synthetic onState(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->onState(I)V

    return-void
.end method

.method parseEvent(I[B)I
    .locals 7
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 80
    if-eqz p2, :cond_1

    array-length v4, p2

    if-ne v4, v2, :cond_1

    .line 81
    aget-byte v0, p2, v3

    .line 82
    .local v0, "dataType":B
    aget-byte v1, p2, v6

    .line 83
    .local v1, "eventType":B
    if-ne v0, v5, :cond_1

    .line 84
    if-ne v1, v5, :cond_0

    .line 91
    .end local v0    # "dataType":B
    .end local v1    # "eventType":B
    :goto_0
    return v2

    .line 86
    .restart local v0    # "dataType":B
    .restart local v1    # "eventType":B
    :cond_0
    if-ne v1, v6, :cond_1

    .line 87
    const/4 v2, 0x5

    goto :goto_0

    .end local v0    # "dataType":B
    .end local v1    # "eventType":B
    :cond_1
    move v2, v3

    .line 91
    goto :goto_0
.end method

.method public bridge synthetic registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSettings(Ljava/util/Map;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->setSettings(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method
