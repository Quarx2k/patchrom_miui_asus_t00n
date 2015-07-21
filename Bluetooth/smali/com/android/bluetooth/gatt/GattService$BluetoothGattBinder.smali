.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 263
    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    # invokes: Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->access$100(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 273
    :goto_0
    return-object v0

    .line 272
    :cond_0
    const-string v0, "BtGatt.GattService"

    const-string v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "charId"    # Landroid/os/ParcelUuid;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 464
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->addCharacteristic(ILjava/util/UUID;II)V

    goto :goto_0
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "descId"    # Landroid/os/ParcelUuid;
    .param p3, "permissions"    # I

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 472
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->addDescriptor(ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 456
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->addIncludedService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 393
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 448
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->beginServiceDeclaration(IIIILjava/util/UUID;Z)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public clearServices(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 492
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    goto :goto_0
.end method

.method public clientConnect(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 318
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 324
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 336
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 399
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public endServiceDeclaration(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 478
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->endServiceDeclaration(I)V

    goto :goto_0
.end method

.method public getAdvManufacturerData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 559
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 560
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvManufacturerData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getAdvServiceData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 544
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 545
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getAdvServiceUuids()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 566
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 567
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
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
    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 278
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public isAdvertising()Z
    .locals 2

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 523
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 524
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->isAdvertising()Z

    move-result v1

    goto :goto_0
.end method

.method public readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "authReq"    # I

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 345
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "authReq"    # I

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 369
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V

    goto :goto_0
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 416
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 330
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 284
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    goto :goto_0
.end method

.method public registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    .locals 9
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "enable"    # Z

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 408
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V

    goto :goto_0
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 422
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    goto :goto_0
.end method

.method public removeAdvManufacturerCodeAndData(I)V
    .locals 1
    .param p1, "manufacturerCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 573
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->removeAdvManufacturerCodeAndData(I)V

    goto :goto_0
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcId"    # Landroid/os/ParcelUuid;

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 485
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->removeService(IIILjava/util/UUID;)V

    goto :goto_0
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 508
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V

    goto :goto_0
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 499
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 500
    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    goto :goto_0
.end method

.method public serverConnect(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 434
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 440
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setAdvManufacturerCodeAndData(I[B)Z
    .locals 2
    .param p1, "manufactureCode"    # I
    .param p2, "manufacturerData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 552
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 553
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setAdvManufacturerCodeAndData(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setAdvServiceData([B)Z
    .locals 2
    .param p1, "serviceData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 537
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 538
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->setAdvServiceData([B)Z

    move-result v1

    goto :goto_0
.end method

.method public startAdvertising(I)V
    .locals 1
    .param p1, "appIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 516
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->startAdvertising(I)V

    goto :goto_0
.end method

.method public startScan(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 296
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->startScan(IZ)V

    goto :goto_0
.end method

.method public startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "ids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    .line 302
    .local v1, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    array-length v3, p3

    new-array v2, v3, [Ljava/util/UUID;

    .line 304
    .local v2, "uuids":[Ljava/util/UUID;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p3

    if-eq v0, v3, :cond_1

    .line 305
    aget-object v3, p3, v0

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/bluetooth/gatt/GattService;->startScanWithUuids(IZ[Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public stopAdvertising()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 530
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising()V

    goto :goto_0
.end method

.method public stopScan(IZ)V
    .locals 1
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->stopScan(IZ)V

    goto :goto_0
.end method

.method public unregisterClient(I)V
    .locals 1
    .param p1, "clientIf"    # I

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 290
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0
.end method

.method public unregisterServer(I)V
    .locals 1
    .param p1, "serverIf"    # I

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 428
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    goto :goto_0
.end method

.method public writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 11
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 356
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V

    goto :goto_0
.end method

.method public writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    .locals 13
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcId"    # Landroid/os/ParcelUuid;
    .param p6, "charInstanceId"    # I
    .param p7, "charId"    # Landroid/os/ParcelUuid;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrId"    # Landroid/os/ParcelUuid;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    .line 383
    .local v0, "service":Lcom/android/bluetooth/gatt/GattService;
    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V

    goto :goto_0
.end method
