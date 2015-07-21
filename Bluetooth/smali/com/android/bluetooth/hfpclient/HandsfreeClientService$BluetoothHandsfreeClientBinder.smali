.class Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;
.super Landroid/bluetooth/IBluetoothHandsfreeClient$Stub;
.source "HandsfreeClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHandsfreeClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHandsfreeClient$Stub;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .line 130
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const-string v1, "HandsfreeClientService"

    const-string v2, "HandsfreeClient call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->access$100(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "flag"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 279
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 282
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 234
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 235
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->mService:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 153
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 261
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->connectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 342
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "location"    # I

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 351
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 352
    const/4 v1, 0x0

    .line 354
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 162
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 270
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 271
    const/4 v1, 0x0

    .line 273
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->disconnectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 324
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 315
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 318
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 252
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 170
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 171
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 189
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 387
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 388
    const/4 v1, 0x0

    .line 390
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 396
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 399
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHandsfreeClientCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 360
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 361
    const/4 v1, 0x0

    .line 363
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v1

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
    .line 179
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 180
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->access$200(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;[I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 378
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 379
    const/4 v1, 0x0

    .line 381
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 207
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, -0x1

    .line 210
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 297
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 300
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 333
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 336
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 288
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 291
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 243
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 246
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "code"    # B

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 369
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 372
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 198
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 216
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 225
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "index"    # I

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$BluetoothHandsfreeClientBinder;->getService()Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    move-result-object v0

    .line 306
    .local v0, "service":Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
    if-nez v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method
