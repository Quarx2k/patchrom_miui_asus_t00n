.class Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;
.super Landroid/bluetooth/IBluetoothHidDevice$Stub;
.source "HidDevService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const-class v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/bluetooth/hid/HidDevService;

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 233
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidDevService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string v2, "HidDevice call not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    # invokes: Lcom/android/bluetooth/hid/HidDevService;->isAvailable()Z
    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDevService;->access$800(Lcom/android/bluetooth/hid/HidDevService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public connect()Z
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 321
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 325
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->connect()Z

    move-result v1

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 333
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 334
    const/4 v1, 0x0

    .line 337
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->disconnect()Z

    move-result v1

    goto :goto_0
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 6
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .param p2, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p3, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p5, "callback"    # Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 261
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 265
    :goto_0
    return v1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/hid/HidDevService;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method public replyReport(BB[B)Z
    .locals 2
    .param p1, "type"    # B
    .param p2, "id"    # B
    .param p3, "data"    # [B

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 297
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 301
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDevService;->replyReport(BB[B)Z

    move-result v1

    goto :goto_0
.end method

.method public reportError(B)Z
    .locals 2
    .param p1, "error"    # B

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 345
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 349
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->reportError(B)Z

    move-result v1

    goto :goto_0
.end method

.method public sendReport(I[B)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "data"    # [B

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 285
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    .line 289
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->sendReport(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public unplug()Z
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 309
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 313
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->unplug()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    .line 273
    .local v0, "service":Lcom/android/bluetooth/hid/HidDevService;
    if-nez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v1

    goto :goto_0
.end method
