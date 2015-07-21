.class final Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;
.super Ljava/lang/Object;
.source "BluetoothMiBleService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/BluetoothMiBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppClient"
.end annotation


# instance fields
.field final clientId:Landroid/os/ParcelUuid;

.field final device:Ljava/lang/String;

.field private mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

.field final synthetic this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

.field final token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;Landroid/os/IBinder;Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "clientId"    # Landroid/os/ParcelUuid;
    .param p4, "device"    # Ljava/lang/String;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p2, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->token:Landroid/os/IBinder;

    .line 464
    iput-object p3, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->clientId:Landroid/os/ParcelUuid;

    .line 465
    iput-object p4, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->device:Ljava/lang/String;

    .line 466
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 478
    const-string v1, "BluetoothMiBleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied() client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->clientId:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    # getter for: Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->access$100(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 480
    .local v0, "idx":I
    if-gez v0, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    # getter for: Lcom/android/bluetooth/ble/BluetoothMiBleService;->mClients:Ljava/util/List;
    invoke-static {v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->access$100(Lcom/android/bluetooth/ble/BluetoothMiBleService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->clientId:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterClient(Landroid/os/ParcelUuid;)Z

    goto :goto_0
.end method

.method public getPeripheral()Lcom/android/bluetooth/ble/GattPeripheral;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    return-object v0
.end method

.method public setPeripheral(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 0
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$AppClient;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    .line 470
    return-void
.end method
