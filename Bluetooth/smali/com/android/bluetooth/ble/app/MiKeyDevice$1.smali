.class Lcom/android/bluetooth/ble/app/MiKeyDevice$1;
.super Lmiui/bluetooth/ble/IBleEventCallback$Stub;
.source "MiKeyDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiKeyDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiKeyDevice;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBleEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;I[B)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 25
    packed-switch p2, :pswitch_data_0

    .line 38
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 27
    :pswitch_0
    const/16 v2, 0x1b

    invoke-static {v2}, Lcom/android/bluetooth/ble/Utils;->simulateKey(I)V

    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v2, v2, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/bluetooth/ble/Utils;->openCameraApp(Landroid/content/Context;I)V

    goto :goto_0

    .line 33
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v2, v2, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/bluetooth/ble/app/MiKeyAlertFullScreenActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "alertIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiKeyDevice$1;->this$0:Lcom/android/bluetooth/ble/app/MiKeyDevice;

    iget-object v2, v2, Lcom/android/bluetooth/ble/app/MiKeyDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
