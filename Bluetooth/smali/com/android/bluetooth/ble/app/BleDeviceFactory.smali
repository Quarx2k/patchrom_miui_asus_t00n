.class public Lcom/android/bluetooth/ble/app/BleDeviceFactory;
.super Ljava/lang/Object;
.source "BleDeviceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBleDevice(Landroid/content/Context;Ljava/lang/String;)Lcom/android/bluetooth/ble/app/BaseBleDevice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {p1}, Lcom/android/bluetooth/ble/DeviceUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    .line 14
    .local v0, "deviceType":I
    packed-switch v0, :pswitch_data_0

    .line 21
    new-instance v1, Lcom/android/bluetooth/ble/app/CommonBleDevice;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/ble/app/CommonBleDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 16
    :pswitch_0
    new-instance v1, Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/ble/app/MiBandDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :pswitch_1
    new-instance v1, Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/ble/app/MiKeyDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
