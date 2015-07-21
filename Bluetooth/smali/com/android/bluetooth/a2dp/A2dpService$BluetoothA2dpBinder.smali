.class Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "A2dpService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/a2dp/A2dpService;

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 269
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    const-string v1, "A2dpService"

    const-string v2, "A2dp call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    # invokes: Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->access$000(Lcom/android/bluetooth/a2dp/A2dpService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    goto :goto_0
.end method


# virtual methods
.method public adjustAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 326
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->adjustAvrcpAbsoluteVolume(I)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 278
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 284
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 285
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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
    .line 289
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 290
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 302
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 303
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 295
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 296
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 314
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 315
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 338
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 339
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 320
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    goto :goto_0
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 332
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAbsoluteVolume(I)V

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 308
    .local v0, "service":Lcom/android/bluetooth/a2dp/A2dpService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 309
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method
