.class public Lcom/android/bluetooth/ble/property/ThemeColorProperty;
.super Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;
.source "ThemeColorProperty.java"


# static fields
.field private static final COMMAND_SET_COLOR_THEME:B = 0xet


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 6
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 14
    const/16 v2, 0x69

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public setProperty([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v2, v3, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    .line 24
    :cond_1
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 25
    .local v0, "colorData":[B
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    .line 26
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-super {p0, v0}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;->setProperty([B)Z

    move-result v1

    goto :goto_0
.end method
