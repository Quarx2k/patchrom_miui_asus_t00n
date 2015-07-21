.class Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
.super Ljava/lang/Object;
.source "MiBleDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanedDevice"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field adv_data:[B

.field rssi:I

.field uuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;I[B)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->address:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->rssi:I

    .line 29
    iput-object p3, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->adv_data:[B

    .line 30
    # invokes: Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->parseUuids([B)Ljava/util/List;
    invoke-static {p3}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->access$000([B)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->uuids:Ljava/util/List;

    .line 31
    return-void
.end method
