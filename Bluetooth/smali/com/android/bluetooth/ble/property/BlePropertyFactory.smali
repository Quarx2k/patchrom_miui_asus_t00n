.class public Lcom/android/bluetooth/ble/property/BlePropertyFactory;
.super Ljava/lang/Object;
.source "BlePropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildProperty(Lcom/android/bluetooth/ble/GattPeripheral;I)Lcom/android/bluetooth/ble/property/BleProperty;
    .locals 11
    .param p0, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p1, "property"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v10, 0x4

    const/16 v2, 0x65

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 17
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v6

    .line 18
    .local v6, "address":Ljava/lang/String;
    if-ne v5, p1, :cond_0

    .line 19
    new-instance v0, Lcom/android/bluetooth/ble/property/ImmediateAlertProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/ImmediateAlertProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 74
    :goto_0
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 21
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    const/4 v2, 0x6

    sget-object v3, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_BATTERY:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_BATTERY_LEVEL:Ljava/util/UUID;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x7

    if-ne v0, p1, :cond_2

    .line 25
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    const/4 v2, 0x7

    sget-object v3, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_LINK_LOSS:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 28
    :cond_2
    if-ne v8, p1, :cond_3

    .line 29
    new-instance v0, Lcom/android/bluetooth/ble/property/UnlockProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/UnlockProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_0

    .line 30
    :cond_3
    if-ne v10, p1, :cond_4

    .line 31
    new-instance v0, Lcom/android/bluetooth/ble/property/PayProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/PayProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_0

    .line 32
    :cond_4
    const/16 v0, 0x6c

    if-ne v0, p1, :cond_5

    .line 33
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    const/16 v2, 0x6c

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_EVENT:Ljava/util/UUID;

    move-object v1, p0

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {v6}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v7

    .line 38
    .local v7, "deviceType":I
    if-ne v8, v7, :cond_6

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 67
    new-instance v0, Lcom/android/bluetooth/ble/property/UnsupportedProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/ble/property/UnsupportedProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_0

    .line 41
    :sswitch_0
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 47
    :sswitch_1
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

    move-object v1, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 53
    :sswitch_2
    new-instance v0, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;

    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    move-object v1, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/ble/property/SimpleCharacteristicProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;ILjava/util/UUID;Ljava/util/UUID;I)V

    goto :goto_0

    .line 59
    :sswitch_3
    new-instance v0, Lcom/android/bluetooth/ble/property/SportStepsProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/SportStepsProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto :goto_0

    .line 61
    :sswitch_4
    new-instance v0, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/SportActivtiesProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto/16 :goto_0

    .line 63
    :sswitch_5
    new-instance v0, Lcom/android/bluetooth/ble/property/ThemeColorProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/ThemeColorProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto/16 :goto_0

    .line 65
    :sswitch_6
    new-instance v0, Lcom/android/bluetooth/ble/property/AlarmClockProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/AlarmClockProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto/16 :goto_0

    .line 69
    :cond_6
    if-ne v9, v7, :cond_7

    .line 70
    new-instance v0, Lcom/android/bluetooth/ble/property/MiKeyProperty;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/MiKeyProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto/16 :goto_0

    .line 74
    :cond_7
    new-instance v0, Lcom/android/bluetooth/ble/property/UnsupportedProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/ble/property/UnsupportedProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6a -> :sswitch_6
    .end sparse-switch
.end method

.method public static getPropertyServiceUUIDs(I)[Ljava/util/UUID;
    .locals 2
    .param p0, "property"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/UUID;>;"
    sparse-switch p0, :sswitch_data_0

    .line 97
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 82
    :sswitch_0
    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :sswitch_1
    sget-object v1, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :sswitch_2
    sget-object v1, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/UUID;

    goto :goto_1

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
    .end sparse-switch
.end method
