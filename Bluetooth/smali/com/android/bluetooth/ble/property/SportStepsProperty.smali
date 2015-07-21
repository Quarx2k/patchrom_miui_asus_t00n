.class public Lcom/android/bluetooth/ble/property/SportStepsProperty;
.super Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;
.source "SportStepsProperty.java"


# static fields
.field private static final COMMAND_SET_REALTIME_STEPS_NOTIFICATION:B = 0x3t


# instance fields
.field private mControlData:[B


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 6
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 19
    const/16 v2, 0x67

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    .line 22
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 23
    return-void
.end method


# virtual methods
.method protected onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .param p3, "isFirst"    # Z

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V

    .line 28
    if-eqz p3, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    aput-byte v1, v0, v1

    .line 30
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    .line 33
    :cond_0
    return-void
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 4
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "isLast"    # Z

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->onRemoveCallback(Landroid/os/ParcelUuid;Z)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/bluetooth/ble/property/SportStepsProperty;->mControlData:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    .line 43
    :cond_0
    return-void
.end method
