.class Lcom/android/bluetooth/ble/app/MiBandDevice$1;
.super Lmiui/bluetooth/ble/IBleEventCallback$Stub;
.source "MiBandDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiBandDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiBandDevice;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;I[B)Z
    .locals 6
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 32
    # getter for: Lcom/android/bluetooth/ble/app/MiBandDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/ble/app/MiBandDevice;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    invoke-static {p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/ble/app/MiBandDevice;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    :goto_0
    return v5

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.bluetooth.BLE_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "miui.bluetooth.extras.DEVICE"

    iget-object v3, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    iget-object v3, v3, Lcom/android/bluetooth/ble/app/MiBandDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v2, "miui.bluetooth.extras.EVENT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiBandDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiBandDevice;

    iget-object v2, v2, Lcom/android/bluetooth/ble/app/MiBandDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
