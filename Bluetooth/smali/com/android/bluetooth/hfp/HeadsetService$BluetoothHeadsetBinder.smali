.class Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "HeadsetService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHeadsetBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/hfp/HeadsetService;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 138
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    const-string v1, "HeadsetService"

    const-string v2, "Headset call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    # invokes: Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$100(Lcom/android/bluetooth/hfp/HeadsetService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    goto :goto_0
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 230
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public clccResponse(IIIIZLjava/lang/String;I)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 280
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    .line 281
    # invokes: Lcom/android/bluetooth/hfp/HeadsetService;->clccResponse(IIIIZLjava/lang/String;I)V
    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetService;->access$400(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->mService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 158
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 159
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public connectAudio()Z
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 248
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 164
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public disconnectAudio()Z
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 254
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v1

    goto :goto_0
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 242
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 243
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 224
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 169
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 170
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 182
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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
    .line 175
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 176
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 177
    :goto_0
    return-object v1

    :cond_0
    # invokes: Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$200(Lcom/android/bluetooth/hfp/HeadsetService;[I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 194
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 195
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 218
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 219
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAudioOn()Z
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 212
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 213
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    goto :goto_0
.end method

.method public phoneStateChanged(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "numActive"    # I
    .param p2, "numHeld"    # I
    .param p3, "callState"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 273
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 274
    # invokes: Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;I)V

    goto :goto_0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 236
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 288
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 291
    :goto_0
    return v1

    :cond_0
    # invokes: Lcom/android/bluetooth/hfp/HeadsetService;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$500(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 188
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 189
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    goto :goto_0
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 260
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 261
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 200
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 266
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;->getService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 206
    .local v0, "service":Lcom/android/bluetooth/hfp/HeadsetService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 207
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method
