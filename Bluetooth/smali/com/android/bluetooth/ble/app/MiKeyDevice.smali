.class public Lcom/android/bluetooth/ble/app/MiKeyDevice;
.super Lcom/android/bluetooth/ble/app/AlertBleDevice;
.source "MiKeyDevice.java"


# static fields
.field private static final ALERT_CANCEL:[B

.field private static final ALERT_DATA:[B


# instance fields
.field private mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-array v0, v3, [B

    const/16 v1, 0x8

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_DATA:[B

    .line 19
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_CANCEL:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;-><init>(Lcom/android/bluetooth/ble/app/MiKeyDevice;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAlertDataForCancel()[B
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_CANCEL:[B

    return-object v0
.end method

.method getAlertDataForClock()[B
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_DATA:[B

    return-object v0
.end method

.method getAlertDataForIncall()[B
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_DATA:[B

    return-object v0
.end method

.method getAlertDataForSMS()[B
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->ALERT_DATA:[B

    return-object v0
.end method

.method public bridge synthetic getDeviceType()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyProperty(I[B)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->notifyProperty(I[B)V

    return-void
.end method

.method onDeviceReady()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "mi_key_alarm_event"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mi_key_camera_event"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/ble/app/MiKeyDevice$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/app/MiKeyDevice$2;-><init>(Lcom/android/bluetooth/ble/app/MiKeyDevice;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 119
    :cond_1
    return-void
.end method

.method protected onSettingsUpdated()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->onSettingsUpdated()V

    .line 49
    invoke-static {v3}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mi_key_camera_event"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v3, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    .line 56
    :goto_0
    invoke-static {v4}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mi_key_open_camera_event"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v4, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    .line 63
    :goto_1
    invoke-static {v5}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mi_key_alarm_event"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->getSettingBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v5, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    .line 70
    :goto_2
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v3, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v4, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mEventCallback:Lmiui/bluetooth/ble/IBleEventCallback;

    invoke-virtual {p0, v5, v1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    goto :goto_2
.end method

.method public bridge synthetic onState(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->onState(I)V

    return-void
.end method

.method parseEvent(I[B)I
    .locals 3
    .param p1, "property"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 94
    const/16 v2, 0x6b

    if-ne p1, v2, :cond_0

    .line 95
    array-length v2, p2

    invoke-static {p2, v1, v2}, Lcom/android/bluetooth/ble/Utils;->bytesToInt([BII)I

    move-result v0

    .line 96
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 105
    .end local v0    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 98
    .restart local v0    # "type":I
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    .line 100
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->registerBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSettings(Ljava/util/Map;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->setSettings(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->stop()V

    return-void
.end method

.method public bridge synthetic unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Lmiui/bluetooth/ble/IBleEventCallback;

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/app/AlertBleDevice;->unregisterBleEventCallback(ILmiui/bluetooth/ble/IBleEventCallback;)Z

    move-result v0

    return v0
.end method
