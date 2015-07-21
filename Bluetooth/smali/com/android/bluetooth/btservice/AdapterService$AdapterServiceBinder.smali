.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0
    .param p1, "svc"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    .line 518
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 520
    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 741
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelBondProcess(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 747
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 684
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    :goto_0
    return v1

    .line 689
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 690
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public configHciSnoopLog(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 972
    const-string v2, "BluetoothAdapterService"

    const-string v3, "configHciSnoopLog(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    :goto_0
    return v1

    .line 976
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 977
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLog(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # I
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 924
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 925
    const-string v2, "BluetoothAdapterService"

    const-string v3, "connectSocket(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    :goto_0
    return-object v1

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 930
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 931
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 730
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    :goto_0
    return v1

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 736
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "type"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .param p4, "port"    # I
    .param p5, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 936
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 937
    const-string v2, "BluetoothAdapterService"

    const-string v3, "createSocketChannel(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_0
    :goto_0
    return-object v1

    .line 941
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 942
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 943
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method public disable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    const-string v2, "BluetoothAdapterService"

    const-string v3, "disable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 577
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 578
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v1

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 549
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enable(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 554
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    move-result v1

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    const-string v2, "BluetoothAdapterService"

    const-string v3, "enableNoAuto(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    :goto_0
    return v1

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 566
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enableNoAutoConnect()Z

    move-result v1

    goto :goto_0
.end method

.method public fetchRemoteMasInstances(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 872
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 873
    const-string v2, "BluetoothAdapterService"

    const-string v3, "fetchMasInstances(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    :goto_0
    return v1

    .line 877
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 878
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteMasInstances(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 861
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 862
    const-string v2, "BluetoothAdapterService"

    const-string v3, "fetchRemoteUuids(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    :goto_0
    return v1

    .line 866
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 867
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAdapterConnectionState()I
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 714
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 715
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterConnectionState()I

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 585
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getAddress(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    :goto_0
    return-object v1

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 590
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 765
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 766
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 707
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 708
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    :goto_0
    return v1

    .line 656
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 657
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 608
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getName(): not allowed for non-active user and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    :goto_0
    return-object v1

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 613
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 719
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 720
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getProfileConnectionState: not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    :goto_0
    return v1

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 725
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectionState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 792
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    :goto_0
    return-object v1

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 798
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteClass(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    :goto_0
    return v1

    .line 844
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 845
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 770
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 771
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    :goto_0
    return-object v1

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 776
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRemoteTrust(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 814
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteTrust"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 816
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteTrust(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    :goto_0
    return v1

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 821
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteTrust(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 781
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 782
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteType(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_0
    :goto_0
    return v1

    .line 786
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 787
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 850
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getRemoteUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 857
    :goto_0
    return-object v1

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 856
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 857
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 629
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 635
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v1

    goto :goto_0
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    # invokes: Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 530
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSocketOpt(III[B)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B

    .prologue
    const/4 v1, -0x1

    .line 959
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 960
    const-string v2, "BluetoothAdapterService"

    const-string v3, "getSocketOpt(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    :goto_0
    return v1

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 965
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->getSocketOpt(III[B)I

    move-result v1

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 542
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 543
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v1

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    const-string v1, "BluetoothAdapterService"

    const-string v2, "getUuids(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-array v1, v3, [Landroid/os/ParcelUuid;

    .line 602
    :goto_0
    return-object v1

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 601
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 694
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    const-string v2, "BluetoothAdapterService"

    const-string v3, "isDiscovering(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 700
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDiscovering()Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 535
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 536
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 983
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 752
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    const-string v2, "BluetoothAdapterService"

    const-string v3, "removeBond(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    :goto_0
    return v1

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 758
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0
.end method

.method public sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 918
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setDiscoverableTimeout(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    :goto_0
    return v1

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 668
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    move-result v1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setName(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return v1

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 624
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z

    .prologue
    const/4 v1, 0x0

    .line 905
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 906
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPairingConfirmation(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_0
    :goto_0
    return v1

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 911
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B

    .prologue
    const/4 v1, 0x0

    .line 894
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 895
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPasskey(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    :goto_0
    return v1

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 900
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B

    .prologue
    const/4 v1, 0x0

    .line 883
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 884
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPin(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    :goto_0
    return v1

    .line 888
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 889
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    goto :goto_0
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 804
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setRemoteAlias(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 809
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "trustValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 827
    const-string v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRemoteTrust to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 829
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setRemoteTrust(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_0
    :goto_0
    return v1

    .line 833
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 834
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setScanMode(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return v1

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 646
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v1

    goto :goto_0
.end method

.method public setSocketOpt(III[BI)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "channel"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .param p5, "optionLen"    # I

    .prologue
    const/4 v1, -0x1

    .line 948
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    const-string v2, "BluetoothAdapterService"

    const-string v3, "setSocketOpt(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 954
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 955
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->setSocketOpt(III[BI)I

    move-result v1

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_1

    .line 674
    const-string v2, "BluetoothAdapterService"

    const-string v3, "startDiscovery(): not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_0
    :goto_0
    return v1

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 679
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothCallback;

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 989
    .local v0, "service":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    goto :goto_0
.end method
