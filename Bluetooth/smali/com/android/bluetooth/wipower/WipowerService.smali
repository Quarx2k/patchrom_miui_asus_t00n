.class public Lcom/android/bluetooth/wipower/WipowerService;
.super Landroid/app/Service;
.source "WipowerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WipowerService"

.field private static final mLock:Ljava/lang/Object;

.field private static mOutputStream:Ljava/io/OutputStream;


# instance fields
.field private mBinder:Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/wipower/IWipowerManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/wipower/WipowerService;->mOutputStream:Ljava/io/OutputStream;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/wipower/WipowerService;->mLock:Ljava/lang/Object;

    .line 74
    const-string v0, "WipowerService"

    const-string v1, "call ClassInitNative()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/android/bluetooth/wipower/WipowerService;->classInitNative()V

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    iput-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mBluetoothGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 67
    iput-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mState:I

    .line 231
    const-string v0, "WipowerService"

    const-string v1, "WipowerService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/wipower/WipowerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/wipower/WipowerService;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/wipower/WipowerService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private static cleanupService()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "WipowerService"

    const-string v1, "cleanupService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method private native enableAlertNative(Z)I
.end method

.method private native enableDataNative(Z)I
.end method

.method private native enableNative(Z)I
.end method

.method private native getCurrentLimitNative()B
.end method

.method private native getStateNative()I
.end method

.method private native initNative()V
.end method

.method private isAvailable()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method private native setCurrentLimitNative(B)I
.end method


# virtual methods
.method public enableAlert(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/bluetooth/wipower/WipowerService;->enableAlertNative(Z)I

    move-result v0

    .line 105
    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableData(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/bluetooth/wipower/WipowerService;->enableDataNative(Z)I

    move-result v0

    .line 110
    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentLimit()B
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/bluetooth/wipower/WipowerService;->getCurrentLimitNative()B

    move-result v0

    .line 100
    .local v0, "ret":B
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/bluetooth/wipower/WipowerService;->getStateNative()I

    move-result v0

    .line 90
    .local v0, "ret":I
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 263
    const-string v0, "WipowerService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mBinder:Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "WipowerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 248
    const-string v0, "WipowerService"

    const-string v1, "Calling InitNative"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/wipower/WipowerService;->initNative()V

    .line 250
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 251
    new-instance v0, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;-><init>(Lcom/android/bluetooth/wipower/WipowerService;)V

    iput-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mBinder:Lcom/android/bluetooth/wipower/WipowerService$WipowerBinder;

    .line 252
    const-string v0, "WipowerService"

    const-string v1, "onCreate>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "WipowerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 269
    const-string v0, "WipowerService"

    const-string v1, "onStart Command called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public registerCallback(Landroid/wipower/IWipowerManagerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/wipower/IWipowerManagerCallback;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 115
    return-void
.end method

.method public setCurrentLimit(B)Z
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/bluetooth/wipower/WipowerService;->setCurrentLimitNative(B)I

    move-result v0

    .line 95
    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCharging()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, v1}, Lcom/android/bluetooth/wipower/WipowerService;->enableNative(Z)I

    move-result v0

    .line 80
    .local v0, "ret":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stateChangeCallback(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 277
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stateChangeCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 280
    .local v2, "n":I
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting updateAdapterState() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/wipower/IWipowerManagerCallback;

    invoke-interface {v3, p1}, Landroid/wipower/IWipowerManagerCallback;->onWipowerStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 290
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method public stopCharging()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v1}, Lcom/android/bluetooth/wipower/WipowerService;->enableNative(Z)I

    move-result v0

    .line 85
    .local v0, "ret":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public unregisterCallback(Landroid/wipower/IWipowerManagerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/wipower/IWipowerManagerCallback;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 119
    return-void
.end method

.method wipowerAlertNotify(I)V
    .locals 6
    .param p1, "alert"    # I

    .prologue
    .line 293
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wipowerAlertNotify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 297
    .local v2, "n":I
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting wipower alert() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 300
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/wipower/IWipowerManagerCallback;

    int-to-byte v4, p1

    invoke-interface {v3, v4}, Landroid/wipower/IWipowerManagerCallback;->onWipowerAlert(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 307
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method wipowerDataNotify([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 328
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wipowerDataNotify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 332
    .local v2, "n":I
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting wipowerdata() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/wipower/IWipowerManagerCallback;

    invoke-interface {v3, p1}, Landroid/wipower/IWipowerManagerCallback;->onWipowerData([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 343
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method wipowerPowerNotify(B)V
    .locals 6
    .param p1, "alert"    # B

    .prologue
    .line 310
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wipowerPowerNotify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 314
    .local v2, "n":I
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting wipower power alert() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 317
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/wipower/IWipowerManagerCallback;

    invoke-interface {v3, p1}, Landroid/wipower/IWipowerManagerCallback;->onPowerApply(B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WipowerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/wipower/WipowerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 324
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method
