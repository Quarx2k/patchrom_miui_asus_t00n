.class Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;
.super Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;
.source "BluetoothMiBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/BluetoothMiBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GattPeripheralBinder"
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

.field final synthetic this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/ble/BluetoothMiBleService;Lcom/android/bluetooth/ble/BluetoothMiBleService;)V
    .locals 1
    .param p2, "srv"    # Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->this$0:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-direct {p0}, Lmiui/bluetooth/ble/IBluetoothMiBle$Stub;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .line 239
    iput-object p2, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mPM:Landroid/content/pm/PackageManager;

    .line 241
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->initTrustSinatures()V

    .line 242
    return-void
.end method

.method private checkAuthorised()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 214
    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 216
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 217
    .local v8, "pkgName":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v8, v11, v13

    .line 219
    :try_start_0
    iget-object v11, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mPM:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v1, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v9, v1, v3

    .line 222
    .local v9, "sig":Landroid/content/pm/Signature;
    const/4 v11, 0x0

    invoke-static {v11, v9}, Lcom/android/bluetooth/ble/property/PropertyPermissions;->checkSignature(ILandroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    .line 223
    const/4 v11, 0x1

    return v11

    .line 219
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 216
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 228
    .end local v4    # "i$":I
    :catch_1
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 233
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_2
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Signature authorise failed"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)[B
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    const-string v2, "BluetoothMiBleService"

    const-string v3, "getProperty() with params"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 346
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 347
    const/4 v2, 0x0

    .line 350
    :goto_0
    return-object v2

    .line 349
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 350
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1, p4}, Lcom/android/bluetooth/ble/property/BleProperty;->getProperty([B)[B

    move-result-object v2

    goto :goto_0
.end method

.method private getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->checkAuthorised()Z

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    return-object v0
.end method

.method private initTrustSinatures()V
    .locals 9

    .prologue
    .line 202
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mPM:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    invoke-virtual {v7}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 203
    .local v5, "signs":[Landroid/content/pm/Signature;
    move-object v0, v5

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 204
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-static {v4}, Lcom/android/bluetooth/ble/property/PropertyPermissions;->addSelfSignature(Landroid/content/pm/Signature;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "signature":Landroid/content/pm/Signature;
    .end local v5    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 209
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Landroid/os/ParcelUuid;)Z
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    const-string v3, "BluetoothMiBleService"

    const-string v4, "authenticate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B

    move-result-object v0

    .line 401
    .local v0, "ret":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lt v3, v1, :cond_0

    aget-byte v3, v0, v2

    if-lez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public authorize(Ljava/lang/String;Landroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 407
    const-string v0, "BluetoothMiBleService"

    const-string v1, "authorize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v0

    return v0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->mService:Lcom/android/bluetooth/ble/BluetoothMiBleService;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public connect(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    const-string v0, "BluetoothMiBleService"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->connectClient(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 297
    return-void
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "BluetoothMiBleService"

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->disconnectClient(Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 305
    return-void
.end method

.method public encrypt(Ljava/lang/String;Landroid/os/ParcelUuid;[B)[B
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "plain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    const-string v0, "BluetoothMiBleService"

    const-string v1, "encrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "BluetoothMiBleService"

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I)[B
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v2, "BluetoothMiBleService"

    const-string v3, "getProperty()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 333
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 334
    const/4 v2, 0x0

    .line 337
    :goto_0
    return-object v2

    .line 336
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 337
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/property/BleProperty;->getProperty()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getRssi(Ljava/lang/String;Landroid/os/ParcelUuid;)I
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    const-string v1, "BluetoothMiBleService"

    const-string v2, "getRssi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 321
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 322
    const/high16 v1, -0x80000000

    .line 324
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->readRemoteRSSI()I

    move-result v1

    goto :goto_0
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public isConnected(Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v1, "BluetoothMiBleService"

    const-string v2, "isConnected()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 263
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "clientId"    # Landroid/os/ParcelUuid;
    .param p4, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBleCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    const-string v0, "BluetoothMiBleService"

    const-string v1, "registerClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->registerClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBleCallback;)V

    .line 281
    return-void
.end method

.method public registerPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    const-string v2, "BluetoothMiBleService"

    const-string v3, "registerPropertyCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 374
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 375
    const/4 v2, 0x0

    .line 378
    :goto_0
    return v2

    .line 377
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 378
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1, p2, p4}, Lcom/android/bluetooth/ble/property/BleProperty;->addPropertyCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z

    move-result v2

    goto :goto_0
.end method

.method public setEncryptionKey(Ljava/lang/String;Landroid/os/ParcelUuid;[B)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v0, "BluetoothMiBleService"

    const-string v1, "setEncryptionKey()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z

    move-result v0

    return v0
.end method

.method public setProperty(Ljava/lang/String;Landroid/os/ParcelUuid;I[B)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v2, "BluetoothMiBleService"

    const-string v3, "setProperty()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 360
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 361
    const/4 v2, 0x0

    .line 364
    :goto_0
    return v2

    .line 363
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 364
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1, p4}, Lcom/android/bluetooth/ble/property/BleProperty;->setProperty([B)Z

    move-result v2

    goto :goto_0
.end method

.method public setRssiThreshold(Ljava/lang/String;Landroid/os/ParcelUuid;I)Z
    .locals 5
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "rssi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 415
    const-string v3, "BluetoothMiBleService"

    const-string v4, "setRssiThreshold()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 418
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 422
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    instance-of v3, v1, Lcom/android/bluetooth/ble/property/UnlockProperty;

    if-eqz v3, :cond_0

    .line 423
    check-cast v1, Lcom/android/bluetooth/ble/property/UnlockProperty;

    .end local v1    # "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1, p3}, Lcom/android/bluetooth/ble/property/UnlockProperty;->setRssiThreshold(I)Z

    move-result v2

    goto :goto_0
.end method

.method public supportProperty(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "property"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 431
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 432
    const/4 v2, 0x0

    .line 435
    :goto_0
    return v2

    .line 434
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 435
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/property/BleProperty;->isSupported()Z

    move-result v2

    goto :goto_0
.end method

.method public unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "clientId"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "BluetoothMiBleService"

    const-string v1, "unregisterClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->unregisterClient(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/ParcelUuid;)V

    .line 289
    return-void
.end method

.method public unregisterPropertyCallback(Ljava/lang/String;Landroid/os/ParcelUuid;ILmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;)Z
    .locals 4
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/os/ParcelUuid;
    .param p3, "property"    # I
    .param p4, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    const-string v2, "BluetoothMiBleService"

    const-string v3, "unregisterPropertyCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothMiBleService$GattPeripheralBinder;->getService()Lcom/android/bluetooth/ble/BluetoothMiBleService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/ble/BluetoothMiBleService;->getGattPeripheral(Ljava/lang/String;)Lcom/android/bluetooth/ble/GattPeripheral;

    move-result-object v0

    .line 388
    .local v0, "peripheral":Lcom/android/bluetooth/ble/GattPeripheral;
    if-nez v0, :cond_0

    .line 389
    const/4 v2, 0x0

    .line 392
    :goto_0
    return v2

    .line 391
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/bluetooth/ble/GattPeripheral;->getProperty(I)Lcom/android/bluetooth/ble/property/BleProperty;

    move-result-object v1

    .line 392
    .local v1, "prop":Lcom/android/bluetooth/ble/property/BleProperty;
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/ble/property/BleProperty;->removePropertyCallback(Landroid/os/ParcelUuid;)Z

    move-result v2

    goto :goto_0
.end method
