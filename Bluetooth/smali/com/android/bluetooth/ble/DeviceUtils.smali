.class public Lcom/android/bluetooth/ble/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceType(Ljava/lang/String;)I
    .locals 2
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/android/bluetooth/ble/property/MiliConstants;->isMiliDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p0}, Lcom/android/bluetooth/ble/property/MiKeyConstants;->isMiKeyDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x2

    goto :goto_0
.end method
