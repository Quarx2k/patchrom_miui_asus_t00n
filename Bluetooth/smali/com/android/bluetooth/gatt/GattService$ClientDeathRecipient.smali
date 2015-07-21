.class Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mAppIf:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0
    .param p2, "appIf"    # I

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    .line 229
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 232
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder is dead - unregistering client ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    # getter for: Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I
    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$000(Lcom/android/bluetooth/gatt/GattService;)I

    move-result v0

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising(Z)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 239
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(IZ)V

    goto :goto_0
.end method
