.class Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;
.super Landroid/bluetooth/IQBluetooth$Stub;
.source "QAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/QAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QAdapterServiceBinder"
.end annotation


# instance fields
.field private mQService:Lcom/android/bluetooth/btservice/QAdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/QAdapterService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/btservice/QAdapterService;

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/bluetooth/IQBluetooth$Stub;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 326
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method public enableLeLppRssiMonitor(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 448
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterService;->enableRssiMonitor(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getLEAdvMode()I
    .locals 4

    .prologue
    const/16 v1, 0x18

    .line 339
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "getLEAdvMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 345
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/QAdapterService;->getLEAdvMode()I

    move-result v1

    goto :goto_0
.end method

.method public getService()Lcom/android/bluetooth/btservice/QAdapterService;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    # invokes: Lcom/android/bluetooth/btservice/QAdapterService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/btservice/QAdapterService;->access$000(Lcom/android/bluetooth/btservice/QAdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readLeLppRssiThreshold(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 442
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->readRssiThreshold(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerLeLppRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "client"    # Landroid/bluetooth/IQBluetoothAdapterCallback;
    .param p3, "add"    # Z

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 430
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 431
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->registerRssiMonitorClient(Ljava/lang/String;Landroid/bluetooth/IQBluetoothAdapterCallback;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEAdvMask(ZZZZZ)Z
    .locals 6
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z
    .param p5, "ServiceData"    # Z

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEAdvMask(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :goto_0
    return v1

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 399
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 400
    const-string v1, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLEAdvMask() in Adapterservice: bLocalName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bServices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bTxPower:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " manuData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ServiceData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 401
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEAdvMask(ZZZZZ)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEAdvMode(I)Z
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEAdvMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 355
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEAdvMode(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEAdvParams(IILjava/lang/String;I)Z
    .locals 4
    .param p1, "min_int"    # I
    .param p2, "max_int"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "ad_type"    # I

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEAdvParams(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 366
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 368
    const-string v1, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLEAdvParams() in Adapterservice: address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEAdvParams(IILjava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEManuData([B)Z
    .locals 4
    .param p1, "manuData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEManuData(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 378
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 379
    const-string v1, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLEManuData() in Adapterservice: manuData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEManuData([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEScanRespMask(ZZZZ)Z
    .locals 4
    .param p1, "bLocalName"    # Z
    .param p2, "bServices"    # Z
    .param p3, "bTxPower"    # Z
    .param p4, "bManuData"    # Z

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEScanRespMask(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 410
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 411
    const-string v1, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLEScanRespMask() in Adapterservice: bLocalName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bServices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bTxPower:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " manuData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEScanRespMask(ZZZZ)Z

    move-result v1

    goto :goto_0
.end method

.method public setLEServiceData([B)Z
    .locals 4
    .param p1, "serviceData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 385
    const-string v2, "QBluetoothAdapterService"

    const-string v3, "setLEServiceData(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 389
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-eqz v0, :cond_0

    .line 390
    const-string v1, "QBluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLEServiceData() in Adapterservice: serviceData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEServiceData([B)Z

    move-result v1

    goto :goto_0
.end method

.method public startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I
    .locals 3
    .param p1, "services"    # [Landroid/bluetooth/BluetoothLEServiceUuid;
    .param p2, "callback"    # Landroid/bluetooth/IQBluetoothAdapterCallback;

    .prologue
    .line 416
    const-string v1, "QBluetoothAdapterService"

    const-string v2, "startLeScanEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 418
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 419
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/QAdapterService;->startLeExtendedScan([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I

    move-result v1

    goto :goto_0
.end method

.method public stopLeScanEx(I)V
    .locals 1
    .param p1, "token"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 424
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/QAdapterService;->stopLeExtendedScan(I)V

    goto :goto_0
.end method

.method public writeLeLppRssiThreshold(Ljava/lang/String;BB)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "min"    # B
    .param p3, "max"    # B

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/QAdapterService$QAdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/QAdapterService;

    move-result-object v0

    .line 436
    .local v0, "service":Lcom/android/bluetooth/btservice/QAdapterService;
    if-nez v0, :cond_0

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/QAdapterService;->writeRssiThreshold(Ljava/lang/String;BB)V

    goto :goto_0
.end method
