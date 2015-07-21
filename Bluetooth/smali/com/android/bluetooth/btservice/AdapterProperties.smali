.class Lcom/android/bluetooth/btservice/AdapterProperties;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# static fields
.field private static final BD_ADDR_LEN:I = 0x6

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAddress:[B

.field private mBluetoothClass:I

.field private mBluetoothDisabling:Z

.field private mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionState:I

.field private mDiscoverableTimeout:I

.field private mDiscovering:Z

.field private mName:Ljava/lang/String;

.field private mObject:Ljava/lang/Object;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mScanMode:I

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mState:I

.field private mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 55
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    .line 546
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 70
    return-void
.end method

.method private convertToAdapterState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 343
    packed-switch p1, :pswitch_data_0

    .line 353
    const-string v0, "BluetoothAdapterProperties"

    const-string v1, "Error in convertToAdapterState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 345
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 351
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 593
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string v0, "BluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 5
    .param p1, "state"    # I
    .param p2, "prevState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 358
    packed-switch p2, :pswitch_data_0

    .line 381
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 398
    :cond_0
    :goto_1
    return v0

    .line 360
    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-lez v2, :cond_1

    .line 361
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    goto :goto_0

    .line 363
    :cond_1
    const-string v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProfilesConnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-lez v2, :cond_2

    .line 368
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    goto :goto_0

    .line 370
    :cond_2
    const-string v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProfilesConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :pswitch_2
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-lez v2, :cond_3

    .line 375
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    goto :goto_0

    .line 377
    :cond_3
    const-string v2, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProfilesDisconnecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :pswitch_3
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 384
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-eq v2, v0, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_1

    .line 387
    :pswitch_4
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 388
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    .line 391
    :pswitch_5
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 392
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-eq v2, v0, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_1

    .line 395
    :pswitch_6
    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto/16 :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 381
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateProfileConnectionState(III)V
    .locals 10
    .param p1, "profile"    # I
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 408
    const/4 v2, 0x1

    .line 409
    .local v2, "numDev":I
    move v1, p2

    .line 410
    .local v1, "newHashState":I
    const/4 v4, 0x1

    .line 422
    .local v4, "update":Z
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 423
    .local v3, "stateNumDev":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 424
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    .local v0, "currHashState":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 427
    if-ne p2, v0, :cond_2

    .line 428
    add-int/lit8 v2, v2, 0x1

    .line 447
    .end local v0    # "currHashState":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 448
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_1
    return-void

    .line 429
    .restart local v0    # "currHashState":I
    :cond_2
    if-eq p2, v8, :cond_3

    if-ne p2, v7, :cond_4

    if-eq v0, v8, :cond_4

    .line 432
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 433
    :cond_4
    if-ne v2, v7, :cond_5

    if-ne p3, v0, :cond_5

    .line 434
    const/4 v4, 0x1

    goto :goto_0

    .line 435
    :cond_5
    if-le v2, v7, :cond_7

    if-ne p3, v0, :cond_7

    .line 436
    add-int/lit8 v2, v2, -0x1

    .line 438
    if-eq v0, v8, :cond_6

    if-ne v0, v7, :cond_0

    .line 440
    :cond_6
    move v1, v0

    goto :goto_0

    .line 443
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 335
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method adapterPropertyChangedCallback([I[[B)V
    .locals 12
    .param p1, "types"    # [I
    .param p2, "values"    # [[B

    .prologue
    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_1

    .line 458
    aget-object v7, p2, v1

    .line 459
    .local v7, "val":[B
    aget v6, p1, v1

    .line 460
    .local v6, "type":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " len:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 461
    iget-object v9, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v9

    .line 462
    packed-switch v6, :pswitch_data_0

    .line 511
    :pswitch_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Property change not handled in Java land:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 513
    :cond_0
    :goto_1
    monitor-exit v9

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :pswitch_1
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    .line 465
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 466
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.bluetooth.adapter.extra.LOCAL_NAME"

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v11, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v2, v10, v11}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name is: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 473
    :pswitch_2
    :try_start_1
    iput-object v7, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Address is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {v10}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 477
    :pswitch_3
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BT Class:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 481
    :pswitch_4
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v4

    .line 482
    .local v4, "mode":I
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeFromHal(I)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    .line 483
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v8, "android.bluetooth.adapter.extra.SCAN_MODE"

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const/high16 v8, 0x4000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v8, v2, v10}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 487
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scan Mode:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 488
    iget-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    if-eqz v8, :cond_0

    .line 489
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 490
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v8}, Lcom/android/bluetooth/btservice/AdapterService;->startBluetoothDisable()V

    goto/16 :goto_1

    .line 494
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mode":I
    :pswitch_5
    invoke-static {v7}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v8

    iput-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    goto/16 :goto_1

    .line 497
    :pswitch_6
    array-length v8, v7

    div-int/lit8 v5, v8, 0x6

    .line 498
    .local v5, "number":I
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 499
    .local v0, "addrByte":[B
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 500
    mul-int/lit8 v8, v3, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v7, v8, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    const/16 v10, 0xc

    invoke-virtual {p0, v8, v10}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 507
    .end local v0    # "addrByte":[B
    .end local v3    # "j":I
    .end local v5    # "number":I
    :pswitch_7
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discoverable Timeout:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 515
    .end local v6    # "type":I
    .end local v7    # "val":[B
    :cond_1
    return-void

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 86
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 87
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 89
    :cond_1
    return-void
.end method

.method discoveryStateChangeCallback(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback:discoveryStateChangeCallback with state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 576
    if-nez p1, :cond_1

    .line 577
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 585
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 586
    return-void

    .line 580
    :cond_1
    if-ne p1, v3, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    if-nez v1, :cond_0

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 582
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getAddress()[B
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBluetoothClass()I
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:I

    monitor-exit v1

    return v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 216
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    .line 217
    .local v1, "bondedDeviceList":[Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_0
    return-object v3

    .line 222
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Landroid/bluetooth/BluetoothDevice;

    move-object v1, v0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBondedDevices: length="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    monitor-exit v4

    move-object v3, v1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "ee":Ljava/lang/ArrayStoreException;
    const-string v3, "Error retrieving bonded device array"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/bluetooth/BluetoothDevice;

    monitor-exit v4

    goto :goto_0

    .line 229
    .end local v2    # "ee":Ljava/lang/ArrayStoreException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method getConnectionState()I
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDiscoverableTimeout()I
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    monitor-exit v1

    return v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 290
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 291
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 292
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getScanMode()I
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    monitor-exit v1

    return v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1
    .param p1, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 77
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 78
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method isDiscovering()Z
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    monitor-exit v1

    return v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onBluetoothDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 554
    const-string v0, "onBluetoothDisable()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 555
    iput-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothDisabling:Z

    .line 557
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 558
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    packed-switch v0, :pswitch_data_0

    .line 568
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method onBluetoothReady()V
    .locals 3

    .prologue
    .line 518
    const-string v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScanMode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v0, "BluetoothAdapterProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    .line 528
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    packed-switch v0, :pswitch_data_0

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 541
    :goto_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    .line 543
    :cond_0
    monitor-exit v1

    .line 544
    return-void

    .line 530
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    if-eqz v0, :cond_1

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 533
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 239
    .local v0, "addrByte":[B
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 240
    .local v2, "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    if-nez v2, :cond_2

    .line 241
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 242
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondState(I)V

    .line 244
    const/16 v4, 0xc

    if-ne p2, v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding bonded device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "addrByte":[B
    .end local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "ee":Ljava/lang/Exception;
    const-string v4, "BluetoothAdapterProperties"

    const-string v5, "Exception in onBondStateChanged : "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    .end local v1    # "ee":Ljava/lang/Exception;
    .restart local v0    # "addrByte":[B
    .restart local v2    # "prop":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    :cond_3
    const/16 v4, 0xa

    if-ne p2, v4, :cond_5

    .line 252
    :try_start_1
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    .line 253
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRemoteTrust() result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing bonded device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v3    # "result":Z
    :cond_5
    const/16 v4, 0xb

    if-ne p2, v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteTrust(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    .line 264
    .restart local v3    # "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBondStateChanged result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "state"    # I
    .param p4, "prevState"    # I

    .prologue
    .line 302
    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in sendConnectionStateChange: prevState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateProfileConnectionState(III)V

    .line 316
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 328
    const-string v1, "BluetoothAdapterProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECTION_STATE_CHANGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setConnectionState(I)V
    .locals 2
    .param p1, "mConnectionState"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDiscoverableTimeout(I)Z
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v2, 0x9

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setScanMode(I)Z
    .locals 4
    .param p1, "scanMode"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x7

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setState(I)V
    .locals 3
    .param p1, "mState"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 199
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setUuids([Landroid/os/ParcelUuid;)Z
    .locals 4
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->uuidsToByteArray([Landroid/os/ParcelUuid;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
