.class public Lcom/android/bluetooth/ble/app/CommonBleDevice;
.super Lcom/android/bluetooth/ble/app/AlertBleDevice;
.source "CommonBleDevice.java"


# static fields
.field private static final ALERT_CLOCK:[B

.field private static final ALERT_INCALL:[B

.field private static final ALERT_SMS:[B

.field private static final DATA_CANCEL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-array v0, v3, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_INCALL:[B

    .line 14
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_SMS:[B

    .line 15
    sget-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_INCALL:[B

    sput-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_CLOCK:[B

    .line 16
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->DATA_CANCEL:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlertDataForCancel()[B
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->DATA_CANCEL:[B

    return-object v0
.end method

.method getAlertDataForClock()[B
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_CLOCK:[B

    return-object v0
.end method

.method getAlertDataForIncall()[B
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_INCALL:[B

    return-object v0
.end method

.method getAlertDataForSMS()[B
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/bluetooth/ble/app/CommonBleDevice;->ALERT_SMS:[B

    return-object v0
.end method

.method public bridge synthetic getDeviceType()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyProperty(I[B)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->notifyProperty(I[B)V

    return-void
.end method

.method onDeviceReady()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public bridge synthetic onState(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->onState(I)V

    return-void
.end method

.method parseEvent(I[B)I
    .locals 1
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSettings(Ljava/util/Map;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->setSettings(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method
