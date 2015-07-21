.class Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;
.super Landroid/bluetooth/IBluetoothInputDevice$Stub;
.source "HidService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothInputDeviceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hid/HidService;

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    .line 320
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    const-string v1, "HidService"

    const-string v2, "InputDevice call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hid/HidService;->access$2400(Lcom/android/bluetooth/hid/HidService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 341
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 342
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 347
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 353
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 354
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 364
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 425
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 426
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 376
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 377
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 383
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 384
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 401
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 402
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidService;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result v1

    goto :goto_0
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 413
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 414
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # B

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 419
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 420
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 370
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 371
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 395
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 396
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 407
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidService;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    .line 389
    .local v0, "service":Lcom/android/bluetooth/hid/HidService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 390
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method
