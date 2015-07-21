.class public Lcom/android/bluetooth/ble/property/UnsupportedProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "UnsupportedProperty.java"


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 14
    return-void
.end method


# virtual methods
.method public addPropertyCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 1
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupported()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public removePropertyCallback(Landroid/os/ParcelUuid;)Z
    .locals 1
    .param p1, "clientId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
