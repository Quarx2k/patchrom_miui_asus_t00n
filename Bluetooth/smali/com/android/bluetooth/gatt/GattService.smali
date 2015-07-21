.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$ClientMap;
    }
.end annotation


# static fields
.field private static final ADVERTISING_FLAGS_BYTES:I = 0x3

.field private static final ADVERTISING_PACKET_MAX_BYTES:I = 0x1f

.field private static final DBG:Z = true

.field private static final DEFAULT_SCAN_INTERVAL_MILLIS:I = 0xc8

.field private static final FIELD_OVERHEAD_BYTES:I = 0x2

.field private static final FULL_UUID_BYTES:I = 0x10

.field private static final SHORT_UUID_BYTES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"


# instance fields
.field private mAdvertisingClientIf:I

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvertisingState:Ljava/lang/Integer;

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private final mLock:Ljava/lang/Object;

.field private mManufacturerCode:I

.field private mManufacturerData:[B

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

.field private mServiceData:[B

.field private mServiceDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 83
    new-instance v0, Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/SearchQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    .line 90
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    .line 96
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    .line 101
    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    .line 104
    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    .line 106
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    .line 108
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    .line 109
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/gatt/GattService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/gatt/GattService;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {v2}, Lcom/android/bluetooth/gatt/ServiceDeclaration;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private continueSearch(II)V
    .locals 21
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1807
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueSearch() - connid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1810
    const-string v1, "BtGatt.GattService"

    const-string v2, "Queue is completely empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1812
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueSearch():Queue is empty for connid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_1
    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/SearchQueue;->isEmpty(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/SearchQueue;->pop(I)Lcom/android/bluetooth/gatt/SearchQueue$Entry;

    move-result-object v20

    .line 1817
    .local v20, "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    move-object/from16 v0, v20

    iget v1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move/from16 v0, p1

    if-eq v1, v0, :cond_2

    .line 1818
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "continueSearch(): connid of popped value not matching: input="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and popped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_2
    move-object/from16 v0, v20

    iget-wide v1, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1822
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .line 1837
    .end local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_3
    :goto_0
    return-void

    .line 1826
    .restart local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_4
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->connId:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcType:I

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcInstId:I

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->srvcUuidMsb:J

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charInstId:I

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidLsb:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/bluetooth/gatt/SearchQueue$Entry;->charUuidMsb:J

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    goto :goto_0

    .line 1831
    .end local v20    # "svc":Lcom/android/bluetooth/gatt/SearchQueue$Entry;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v19

    .line 1832
    .local v19, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v19, :cond_3

    .line 1833
    const-string v1, "BtGatt.GattService"

    const-string v2, "continueSearch(): calling searchcomplete in frameworks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    move-object/from16 v0, v19

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private continueServiceDeclaration(III)V
    .locals 17
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1841
    :cond_1
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continueServiceDeclaration() - srvcHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/4 v14, 0x0

    .line 1845
    .local v14, "finished":Z
    const/4 v13, 0x0

    .line 1846
    .local v13, "entry":Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
    if-nez p2, :cond_2

    .line 1847
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-result-object v13

    .line 1849
    :cond_2
    if-eqz v13, :cond_6

    .line 1850
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "continueServiceDeclaration() - next entry type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-byte v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    packed-switch v3, :pswitch_data_0

    .line 1896
    :goto_1
    if-eqz v14, :cond_0

    .line 1897
    const-string v3, "BtGatt.GattService"

    const-string v4, "continueServiceDeclaration() - completed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 1899
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v12, :cond_3

    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1902
    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v16, :cond_7

    .line 1903
    iget-object v3, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v6, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    .line 1909
    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->removePendingDeclaration()V

    .line 1911
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1912
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    goto/16 :goto_0

    .line 1854
    .end local v12    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    :pswitch_0
    iget-boolean v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    if-eqz v3, :cond_4

    .line 1855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    :cond_4
    iget v5, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v6, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNumHandles()I

    move-result v11

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(IIIJJI)V

    goto :goto_1

    .line 1865
    :pswitch_1
    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    iget v10, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iget v11, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddCharacteristicNative(IIJJII)V

    goto/16 :goto_1

    .line 1872
    :pswitch_2
    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iget-object v3, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    iget v10, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddDescriptorNative(IIJJI)V

    goto/16 :goto_1

    .line 1880
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v4, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iget v5, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v6, v13, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v15

    .line 1882
    .local v15, "inclSrvc":I
    if-eqz v15, :cond_5

    .line 1883
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v15}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddIncludedServiceNative(III)V

    goto/16 :goto_1

    .line 1886
    :cond_5
    const/4 v14, 0x1

    .line 1888
    goto/16 :goto_1

    .line 1892
    .end local v15    # "inclSrvc":I
    :cond_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStartServiceNative(III)V

    .line 1893
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1906
    .restart local v12    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_7
    iget-object v3, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-interface {v3, v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_2

    .line 1852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteServices(I)V
    .locals 8
    .param p1, "serverIf"    # I

    .prologue
    .line 1936
    const-string v5, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteServices() - serverIf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v3, "handleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 1944
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1945
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v5, p1, :cond_0

    .line 1948
    iget v5, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1952
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1953
    .local v2, "handle":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_1

    .line 1955
    .end local v2    # "handle":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    .prologue
    .line 1802
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    return-void
.end method

.method private native gattAdvertiseNative(IZ)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;Z)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetCharacteristicNative(IIIJJIJJ)V
.end method

.method private native gattClientGetDescriptorNative(IIIJJIJJIJJ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetIncludedServiceNative(IIIJJIIJJ)V
.end method

.method private native gattClientReadCharacteristicNative(IIIJJIJJI)V
.end method

.method private native gattClientReadDescriptorNative(IIIJJIJJIJJI)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V
.end method

.method private native gattClientScanNative(IZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIIJJIJJII[B)V
.end method

.method private native gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V
.end method

.method private native gattServerAddCharacteristicNative(IIJJII)V
.end method

.method private native gattServerAddDescriptorNative(IIJJI)V
.end method

.method private native gattServerAddIncludedServiceNative(III)V
.end method

.method private native gattServerAddServiceNative(IIIJJI)V
.end method

.method private native gattServerConnectNative(ILjava/lang/String;Z)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerStartServiceNative(III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattSetAdvDataNative(IZZZIII[B[B[B)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;IIIII)V
.end method

.method private getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    .line 129
    :goto_0
    return-object v0

    .line 128
    :cond_0
    monitor-exit v1

    .line 129
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized getAvailableSize()I
    .locals 4

    .prologue
    .line 1780
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1781
    const/16 v0, 0x1c

    .line 1783
    .local v0, "availableSize":I
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 1784
    .local v2, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothUuid;->isShortUuid(Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1785
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 1787
    :cond_0
    add-int/lit8 v0, v0, -0x12

    goto :goto_0

    .line 1790
    .end local v2    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_1
    iget v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    if-eqz v3, :cond_2

    .line 1791
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 1793
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    if-eqz v3, :cond_3

    .line 1794
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 1796
    :cond_3
    monitor-exit p0

    return v0

    .line 1780
    .end local v0    # "availableSize":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1773
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    .line 1774
    .local v0, "type":I
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceType() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return v0
.end method

.method private getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    monitor-exit v1

    .line 137
    :goto_0
    return-object v0

    .line 136
    :cond_0
    monitor-exit v1

    .line 137
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 154
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-ne v2, p2, :cond_0

    .line 158
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native initializeNative()V
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 13
    .param p1, "adv_data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 1928
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    .local v7, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1931
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v8, v12, :cond_1

    .line 1932
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1933
    .local v1, "length":B
    if-nez v1, :cond_2

    .line 1963
    .end local v1    # "length":B
    :cond_1
    return-object v7

    .line 1936
    .restart local v1    # "length":B
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 1937
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 1958
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1940
    :goto_1
    :pswitch_1
    if-lt v1, v12, :cond_0

    .line 1941
    const-string v8, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    add-int/lit8 v8, v1, -0x2

    int-to-byte v1, v8

    goto :goto_1

    .line 1949
    :goto_2
    :pswitch_2
    const/16 v8, 0x10

    if-lt v1, v8, :cond_0

    .line 1950
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 1951
    .local v2, "lsb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 1952
    .local v4, "msb":J
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    add-int/lit8 v8, v1, -0x10

    int-to-byte v1, v8

    .line 1954
    goto :goto_2

    .line 1937
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private removePendingDeclaration()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_0
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeScanClient(IZ)V
    .locals 3
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    .line 163
    .local v0, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    if-ne v2, p1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-ne v2, p2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    .end local v0    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    :cond_1
    return-void
.end method

.method private stopNextService(II)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1918
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNextService() - serverIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    if-nez p2, :cond_1

    .line 1922
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 1923
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1924
    .local v1, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-eqz v3, :cond_0

    .line 1929
    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    .line 1933
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/gatt/HandleMap$Entry;>;"
    .end local v1    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method addCharacteristic(ILjava/util/UUID;II)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "charUuid"    # Ljava/util/UUID;
    .param p3, "properties"    # I
    .param p4, "permissions"    # I

    .prologue
    .line 1683
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCharacteristic() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    .line 1687
    return-void
.end method

.method addDescriptor(ILjava/util/UUID;I)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "descUuid"    # Ljava/util/UUID;
    .param p3, "permissions"    # I

    .prologue
    .line 1690
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDescriptor() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    .line 1694
    return-void
.end method

.method addIncludedService(IIILjava/util/UUID;)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 1675
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIncludedService() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    .line 1679
    return-void
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1362
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginReliableWrite() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1366
    return-void
.end method

.method beginServiceDeclaration(IIIILjava/util/UUID;Z)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "minHandles"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "advertisePreferred"    # Z

    .prologue
    .line 1665
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginServiceDeclaration() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    .local v0, "serviceDeclaration":Lcom/android/bluetooth/gatt/ServiceDeclaration;
    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 1669
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addService(Ljava/util/UUID;IIIZ)V

    .line 1671
    return-void
.end method

.method protected cleanup()Z
    .locals 2

    .prologue
    .line 206
    const-string v0, "BtGatt.GattService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method clearServices(I)V
    .locals 2
    .param p1, "serverIf"    # I

    .prologue
    .line 1722
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v0, "BtGatt.GattService"

    const-string v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 1726
    return-void
.end method

.method clientConnect(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 1099
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDirect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;Z)V

    .line 1103
    return-void
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1106
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1109
    .local v0, "connId":Ljava/lang/Integer;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    .line 1112
    return-void

    .line 1111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 8
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, 0x0

    .line 1265
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1268
    .local v7, "connId":Ljava/lang/Integer;
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    if-eqz v7, :cond_0

    .line 1271
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    .line 1274
    :goto_0
    return-void

    .line 1273
    :cond_0
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - No connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "execute"    # Z

    .prologue
    .line 1369
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endReliableWrite() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1375
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1376
    .local v0, "connId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    .line 1377
    :cond_0
    return-void
.end method

.method endServiceDeclaration(I)V
    .locals 4
    .param p1, "serverIf"    # I

    .prologue
    .line 1697
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v1, "BtGatt.GattService"

    const-string v2, "endServiceDeclaration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1703
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1704
    :catch_0
    move-exception v0

    .line 1705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "uuid1"    # Ljava/util/UUID;
    .param p3, "bda1"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "p4"    # I
    .param p8, "p5"    # I

    .prologue
    .line 1993
    if-nez p3, :cond_0

    const-string p3, "00:00:00:00:00:00"

    .line 1994
    :cond_0
    if-eqz p2, :cond_1

    .line 1995
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    .line 1999
    :goto_0
    return-void

    .line 1998
    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    goto :goto_0
.end method

.method getAdvManufacturerData()[B
    .locals 1

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1165
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    return-object v0
.end method

.method getAdvServiceData()[B
    .locals 1

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1131
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    return-object v0
.end method

.method declared-synchronized getAdvServiceUuids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1170
    const/4 v1, 0x0

    .line 1171
    .local v1, "fullUuidFound":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .local v4, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, v5, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 1173
    .local v0, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-boolean v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->advertisePreferred:Z

    if-eqz v5, :cond_0

    .line 1174
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 1175
    .local v3, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->isShortUuid(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1169
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v1    # "fullUuidFound":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1179
    .restart local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .restart local v1    # "fullUuidFound":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    .restart local v4    # "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_1
    if-nez v1, :cond_0

    .line 1180
    const/4 v1, 0x1

    .line 1181
    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1186
    .end local v0    # "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    .end local v3    # "parcelUuid":Landroid/os/ParcelUuid;
    :cond_2
    monitor-exit p0

    return-object v4
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1248
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1251
    .local v0, "connectedDevAddress":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1252
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1254
    .local v1, "connectedDeviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 15
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
    .line 978
    const-string v13, "android.permission.BLUETOOTH"

    const-string v14, "Need BLUETOOTH permission"

    invoke-virtual {p0, v13, v14}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const/4 v0, 0x1

    .line 982
    .local v0, "DEVICE_TYPE_BREDR":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 987
    .local v7, "deviceStates":Ljava/util/Map;, "Ljava/util/Map<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 988
    .local v3, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 989
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 990
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 996
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 997
    .local v4, "connectedDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 998
    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1000
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1001
    .local v1, "address":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 1002
    .restart local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v5, :cond_2

    .line 1003
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1009
    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v6, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1012
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    move-object/from16 v2, p1

    .local v2, "arr$":[I
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_4

    aget v12, v2, v10

    .line 1013
    .local v12, "state":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_5

    .line 1014
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1019
    .end local v2    # "arr$":[I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "state":I
    :cond_6
    return-object v6
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "BtGatt.GattService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method isAdvertising()Z
    .locals 2

    .prologue
    .line 1190
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1191
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAdvertiseCallback(II)V
    .locals 7
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 926
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientListen() status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 928
    :try_start_0
    const-string v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 932
    :cond_0
    const-string v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid callback state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    monitor-exit v2

    .line 971
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 938
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 939
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    .line 940
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STOPPED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    monitor-exit v2

    goto :goto_0

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 945
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 946
    if-nez p1, :cond_5

    .line 947
    iput p2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    .line 948
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 949
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STARTED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->sendBroadcast(Landroid/content/Intent;)V

    .line 964
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 966
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_8

    .line 967
    :cond_4
    const-string v1, "BtGatt.GattService"

    const-string v2, "app or callback is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    .end local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_5
    const/4 v1, 0x3

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    goto :goto_1

    .line 954
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 955
    if-nez p1, :cond_7

    .line 956
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 957
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.ADVERTISING_STOPPED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    goto :goto_1

    .line 961
    :cond_7
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 970
    .restart local v0    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :cond_8
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGattCallback;->onAdvertiseStateChange(II)V

    goto/16 :goto_0
.end method

.method onAttributeRead(Ljava/lang/String;IIIIZ)V
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1512
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeRead() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v15

    .line 1517
    .local v15, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v15, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeRead() UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 1525
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v13, :cond_0

    .line 1527
    iget v2, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1551
    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeRead() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1531
    .local v16, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 1540
    .end local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    .line 1541
    .restart local v16    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v14

    .line 1542
    .local v14, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v12, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    goto/16 :goto_0

    .line 1527
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAttributeWrite(Ljava/lang/String;IIIIIZZ[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "attrHandle"    # I
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "needRsp"    # Z
    .param p8, "isPrep"    # Z
    .param p9, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1561
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    .line 1567
    .local v18, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-nez v18, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAttributeWrite() UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 1575
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v16, :cond_0

    .line 1577
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    .line 1603
    const-string v2, "BtGatt.GattService"

    const-string v3, "onAttributeWrite() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1581
    .local v19, "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v14, p9

    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    .line 1591
    .end local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    .line 1592
    .restart local v19    # "serviceEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v17

    .line 1593
    .local v17, "charEntry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v14, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v15}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    .line 1577
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onCharacteristicAdded(IIJJII)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "charUuidLsb"    # J
    .param p5, "charUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "charHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1448
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1449
    .local v0, "uuid":Ljava/util/UUID;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srvcHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", charHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    if-nez p1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    .line 1453
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1454
    return-void
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "connId"    # I
    .param p4, "serverIf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1494
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected() connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1498
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    .line 1507
    :goto_0
    return-void

    .line 1500
    :cond_0
    if-eqz p2, :cond_1

    .line 1501
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addConnection(IILjava/lang/String;)V

    .line 1506
    :goto_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    goto :goto_0

    .line 1503
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->removeConnection(II)V

    goto :goto_1
.end method

.method onClientRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 631
    .local v1, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClientRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 633
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 634
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 635
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 636
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    .line 638
    :cond_0
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 642
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addConnection(IILjava/lang/String;)V

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 647
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_1

    .line 648
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 650
    :cond_1
    return-void
.end method

.method onDescriptorAdded(IIJJII)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "descrUuidLsb"    # J
    .param p5, "descrUuidMsb"    # J
    .param p7, "srvcHandle"    # I
    .param p8, "descrHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1460
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1461
    .local v0, "uuid":Ljava/util/UUID;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDescriptorAdded() UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srvcHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", descrHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    if-nez p1, :cond_0

    .line 1464
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p8, v0, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    .line 1465
    :cond_0
    invoke-direct {p0, p2, p1, p7}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1466
    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "connId"    # I
    .param p3, "status"    # I
    .param p4, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    .line 658
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/SearchQueue;->removeConnId(I)V

    .line 659
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 660
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 5
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "address":Ljava/lang/String;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecuteCompleted() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    .line 864
    .local v1, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v1, :cond_0

    .line 865
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    .line 867
    :cond_0
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "connId"    # I
    .param p3, "transId"    # I
    .param p4, "execWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1610
    const-string v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecuteWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1614
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-nez v0, :cond_0

    .line 1617
    :goto_0
    return-void

    .line 1616
    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-ne p4, v2, :cond_1

    :goto_1
    invoke-interface {v1, p1, p3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method onGetCharacteristic(IIIIJJIJJI)V
    .locals 23
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charProp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 694
    .local v22, "srvcUuid":Ljava/util/UUID;
    new-instance v21, Ljava/util/UUID;

    move-object/from16 v0, v21

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 695
    .local v21, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v19

    .line 697
    .local v19, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetCharacteristic() - address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", charUuid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p14

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    if-nez p2, :cond_1

    .line 701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-virtual/range {v5 .. v17}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJIJJ)V

    .line 705
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v20

    .line 706
    .local v20, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v20, :cond_0

    .line 707
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v6, v19

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v12, p14

    invoke-interface/range {v5 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    :cond_0
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    .line 713
    invoke-direct/range {v5 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetCharacteristicNative(IIIJJIJJ)V

    .line 722
    .end local v20    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 718
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v5 .. v18}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    goto :goto_0
.end method

.method onGetDescriptor(IIIIJJIJJIJJ)V
    .locals 29
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    new-instance v28, Ljava/util/UUID;

    move-object/from16 v0, v28

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 730
    .local v28, "srvcUuid":Ljava/util/UUID;
    new-instance v26, Ljava/util/UUID;

    move-object/from16 v0, v26

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 731
    .local v26, "charUuid":Ljava/util/UUID;
    new-instance v27, Ljava/util/UUID;

    move-object/from16 v0, v27

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 732
    .local v27, "descUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 734
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetDescriptor() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", descUuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-nez p2, :cond_1

    .line 738
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v25

    .line 739
    .local v25, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v25, :cond_0

    .line 740
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v12, p14

    invoke-interface/range {v5 .. v13}, Landroid/bluetooth/IBluetoothGattCallback;->onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move-wide/from16 v16, p10

    move-wide/from16 v18, p12

    move/from16 v20, p14

    move-wide/from16 v21, p15

    move-wide/from16 v23, p17

    .line 747
    invoke-direct/range {v7 .. v24}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDescriptorNative(IIIJJIJJIJJ)V

    .line 755
    .end local v25    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 753
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onGetIncludedService(IIIIJJIIJJ)V
    .locals 24
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "inclSrvcType"    # I
    .param p10, "inclSrvcInstId"    # I
    .param p11, "inclSrvcUuidLsb"    # J
    .param p13, "inclSrvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v23, Ljava/util/UUID;

    move-object/from16 v0, v23

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 762
    .local v23, "srvcUuid":Ljava/util/UUID;
    new-instance v22, Ljava/util/UUID;

    move-object/from16 v0, v22

    move-wide/from16 v1, p13

    move-wide/from16 v3, p11

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 763
    .local v22, "inclSrvcUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 765
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGetIncludedService() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", inclUuid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    if-nez p2, :cond_1

    .line 770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v21

    .line 771
    .local v21, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v21, :cond_0

    .line 772
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v5 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V

    :cond_0
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-wide/from16 v17, p11

    move-wide/from16 v19, p13

    .line 778
    invoke-direct/range {v7 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetIncludedServiceNative(IIIJJIIJJ)V

    .line 785
    .end local v21    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    :goto_0
    return-void

    .line 783
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    goto :goto_0
.end method

.method onIncludedServiceAdded(IIII)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .param p4, "includedSrvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1439
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncludedServiceAdded() status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", included="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-direct {p0, p2, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1442
    return-void
.end method

.method onNotify(ILjava/lang/String;IIJJIJJZ[B)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "isNotify"    # Z
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 803
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 804
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 806
    .local v13, "charUuid":Ljava/util/UUID;
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotify() - address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", charUuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p15

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 810
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_0

    .line 811
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-direct {v8, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-direct {v10, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p9

    move-object/from16 v11, p15

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 816
    :cond_0
    return-void
.end method

.method onReadCharacteristic(IIIIJJIJJI[B)V
    .locals 16
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "charType"    # I
    .param p15, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v15, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 824
    .local v15, "srvcUuid":Ljava/util/UUID;
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 825
    .local v14, "charUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 827
    .local v5, "address":Ljava/lang/String;
    const-string v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReadCharacteristic() - address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p15

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 831
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 832
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v15}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    move-object/from16 v12, p15

    invoke-interface/range {v4 .. v12}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 836
    :cond_0
    return-void
.end method

.method onReadDescriptor(IIIIJJIJJIJJI[B)V
    .locals 20
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .param p19, "charType"    # I
    .param p20, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    new-instance v19, Ljava/util/UUID;

    move-object/from16 v0, v19

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 876
    .local v19, "srvcUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 877
    .local v17, "charUuid":Ljava/util/UUID;
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 878
    .local v18, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 880
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReadDescriptor() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p20

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    .line 884
    .local v16, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v16, :cond_0

    .line 885
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    move-object/from16 v15, p20

    invoke-interface/range {v5 .. v15}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    .line 890
    :cond_0
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 4
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReadRemoteRssi() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 920
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v0, :cond_0

    .line 921
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 923
    :cond_0
    return-void
.end method

.method onRegisterForNotifications(IIIIIJJIJJ)V
    .locals 10
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "registered"    # I
    .param p4, "srvcType"    # I
    .param p5, "srvcInstId"    # I
    .param p6, "srvcUuidLsb"    # J
    .param p8, "srvcUuidMsb"    # J
    .param p10, "charInstId"    # I
    .param p11, "charUuidLsb"    # J
    .param p13, "charUuidMsb"    # J

    .prologue
    .line 790
    new-instance v6, Ljava/util/UUID;

    move-wide/from16 v0, p8

    move-wide/from16 v2, p6

    invoke-direct {v6, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 791
    .local v6, "srvcUuid":Ljava/util/UUID;
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p13

    move-wide/from16 v2, p11

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 792
    .local v5, "charUuid":Ljava/util/UUID;
    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "address":Ljava/lang/String;
    const-string v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onRegisterForNotifications() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", registered="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", charUuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "attrHandle"    # I

    .prologue
    .line 1620
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponseSendCompleted() handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void
.end method

.method onScanResult(Ljava/lang/String;I[B)V
    .locals 20
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "adv_data"    # [B

    .prologue
    .line 583
    const-string v17, "BtGatt.GattService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onScanResult() - address="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v15

    .line 587
    .local v15, "remoteUuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/gatt/ScanClient;

    .line 588
    .local v7, "client":Lcom/android/bluetooth/gatt/ScanClient;
    iget-object v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 589
    const/4 v13, 0x0

    .line 590
    .local v13, "matches":I
    iget-object v6, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    .local v6, "arr$":[Ljava/util/UUID;
    array-length v12, v6

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v16, v6, v11

    .line 591
    .local v16, "search":Ljava/util/UUID;
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11    # "i$":I
    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    .line 592
    .local v14, "remote":Ljava/util/UUID;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 593
    add-int/lit8 v13, v13, 0x1

    .line 590
    .end local v14    # "remote":Ljava/util/UUID;
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .local v10, "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_1

    .line 599
    .end local v16    # "search":Ljava/util/UUID;
    :cond_3
    iget-object v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_0

    .line 602
    .end local v6    # "arr$":[Ljava/util/UUID;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matches":I
    :cond_4
    iget-boolean v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v4

    .line 604
    .local v4, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v4, :cond_0

    .line 606
    :try_start_0
    iget-object v0, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/IBluetoothGattCallback;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v8

    .line 608
    .local v8, "e":Landroid/os/RemoteException;
    const-string v17, "BtGatt.GattService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 614
    .end local v4    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v5

    .line 615
    .local v5, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v5, :cond_0

    .line 617
    :try_start_1
    iget-object v0, v5, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 618
    :catch_1
    move-exception v8

    .line 619
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v17, "BtGatt.GattService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v17, v0

    iget v0, v7, Lcom/android/bluetooth/gatt/ScanClient;->appIf:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 626
    .end local v5    # "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    .end local v7    # "client":Lcom/android/bluetooth/gatt/ScanClient;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_6
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 3
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 666
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchCompleted() - connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->continueSearch(II)V

    .line 669
    return-void
.end method

.method onSearchResult(IIIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuidLsb"    # J
    .param p6, "srvcUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p4

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 675
    .local v14, "uuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v12

    .line 677
    .local v12, "address":Ljava/lang/String;
    const-string v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSearchResult() - address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/gatt/SearchQueue;->add(IIIJJ)V

    .line 681
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    .line 682
    .local v13, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v13, :cond_0

    .line 683
    iget-object v4, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v12, v0, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V

    .line 686
    :cond_0
    return-void
.end method

.method onServerRegistered(IIJJ)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "uuidLsb"    # J
    .param p5, "uuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1413
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1414
    .local v1, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServerRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1416
    .local v0, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattServerCallback;>.App;"
    if-eqz v0, :cond_0

    .line 1417
    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 1418
    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1419
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    .line 1421
    :cond_0
    return-void
.end method

.method onServiceAdded(IIIIJJI)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1426
    new-instance v5, Ljava/util/UUID;

    move-wide/from16 v0, p7

    invoke-direct {v5, v0, v1, p5, p6}, Ljava/util/UUID;-><init>(JJ)V

    .line 1427
    .local v5, "uuid":Ljava/util/UUID;
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceAdded() UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    if-nez p1, :cond_0

    .line 1430
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    move v3, p2

    move/from16 v4, p9

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    .line 1434
    :cond_0
    move/from16 v0, p9

    invoke-direct {p0, p2, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    .line 1435
    return-void
.end method

.method onServiceDeleted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I

    .prologue
    .line 1486
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDeleted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    .line 1489
    return-void
.end method

.method onServiceStarted(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1470
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStarted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    if-nez p1, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1474
    :cond_0
    return-void
.end method

.method onServiceStopped(III)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "serverIf"    # I
    .param p3, "srvcHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1478
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStopped() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    if-nez p1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 1482
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    .line 1483
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x2

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method onWriteCharacteristic(IIIIJJIJJ)V
    .locals 15
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    new-instance v14, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v14, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 844
    .local v14, "srvcUuid":Ljava/util/UUID;
    new-instance v13, Ljava/util/UUID;

    move-wide/from16 v0, p12

    move-wide/from16 v2, p10

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 845
    .local v13, "charUuid":Ljava/util/UUID;
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v5

    .line 847
    .local v5, "address":Ljava/lang/String;
    const-string v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onWriteCharacteristic() - address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v12

    .line 851
    .local v12, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v12, :cond_0

    .line 852
    iget-object v4, v12, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-direct {v9, v14}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v11, Landroid/os/ParcelUuid;

    invoke-direct {v11, v13}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p9

    invoke-interface/range {v4 .. v11}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 856
    :cond_0
    return-void
.end method

.method onWriteDescriptor(IIIIJJIJJIJJ)V
    .locals 19
    .param p1, "connId"    # I
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuidLsb"    # J
    .param p7, "srvcUuidMsb"    # J
    .param p9, "charInstId"    # I
    .param p10, "charUuidLsb"    # J
    .param p12, "charUuidMsb"    # J
    .param p14, "descrInstId"    # I
    .param p15, "descrUuidLsb"    # J
    .param p17, "descrUuidMsb"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    new-instance v18, Ljava/util/UUID;

    move-object/from16 v0, v18

    move-wide/from16 v1, p7

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 898
    .local v18, "srvcUuid":Ljava/util/UUID;
    new-instance v16, Ljava/util/UUID;

    move-object/from16 v0, v16

    move-wide/from16 v1, p12

    move-wide/from16 v3, p10

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 899
    .local v16, "charUuid":Ljava/util/UUID;
    new-instance v17, Ljava/util/UUID;

    move-object/from16 v0, v17

    move-wide/from16 v1, p17

    move-wide/from16 v3, p15

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 900
    .local v17, "descrUuid":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v6

    .line 902
    .local v6, "address":Ljava/lang/String;
    const-string v5, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWriteDescriptor() - address="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v15

    .line 906
    .local v15, "app":Lcom/android/bluetooth/gatt/ContextMap$App;, "Lcom/android/bluetooth/gatt/ContextMap<Landroid/bluetooth/IBluetoothGattCallback;>.App;"
    if-eqz v15, :cond_0

    .line 907
    iget-object v5, v15, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v10, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p9

    move/from16 v13, p14

    invoke-interface/range {v5 .. v14}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    .line 912
    :cond_0
    return-void
.end method

.method readCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 17
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "authReq"    # I

    .prologue
    .line 1279
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCharacteristic() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 1284
    .local v16, "connId":Ljava/lang/Integer;
    if-eqz v16, :cond_0

    .line 1285
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    invoke-direct/range {v2 .. v15}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(IIIJJIJJI)V

    .line 1292
    :goto_0
    return-void

    .line 1291
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;I)V
    .locals 22
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "authReq"    # I

    .prologue
    .line 1320
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDescriptor() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 1325
    .local v21, "connId":Ljava/lang/Integer;
    if-eqz v21, :cond_0

    .line 1326
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    invoke-direct/range {v2 .. v20}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(IIIJJIJJIJJI)V

    .line 1336
    :goto_0
    return-void

    .line 1335
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1400
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readRemoteRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    .line 1404
    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 3
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1258
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDevice() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    .line 1262
    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattCallback;

    .prologue
    .line 1082
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClient() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1086
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    .line 1088
    return-void
.end method

.method registerForNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z)V
    .locals 18
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "enable"    # Z

    .prologue
    .line 1383
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForNotification() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 1388
    .local v17, "connId":Ljava/lang/Integer;
    if-eqz v17, :cond_0

    .line 1389
    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v11, p6

    move/from16 v16, p8

    invoke-direct/range {v2 .. v16}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IIJJIJJZ)V

    .line 1397
    :goto_0
    return-void

    .line 1395
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForNotification() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGattServerCallback;

    .prologue
    .line 1628
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerServer() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->add(Ljava/util/UUID;Ljava/lang/Object;)V

    .line 1632
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    .line 1634
    return-void
.end method

.method removeAdvManufacturerCodeAndData(I)V
    .locals 1
    .param p1, "manufacturerCode"    # I

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1156
    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-eq v0, p1, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1159
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    .line 1160
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    goto :goto_0
.end method

.method removeService(IIILjava/util/UUID;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "srvcType"    # I
    .param p3, "srvcInstanceId"    # I
    .param p4, "srvcUuid"    # Ljava/util/UUID;

    .prologue
    .line 1712
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeService() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v0

    .line 1717
    .local v0, "srvcHandle":I
    if-nez v0, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1718
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_0
.end method

.method sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V
    .locals 6
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "confirm"    # Z
    .param p9, "value"    # [B

    .prologue
    .line 1748
    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotification() - address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p5, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v2

    .line 1753
    .local v2, "srvcHandle":I
    if-nez v2, :cond_1

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, v2, p7, p6}, Lcom/android/bluetooth/gatt/HandleMap;->getCharacteristicHandle(ILjava/util/UUID;I)I

    move-result v0

    .line 1756
    .local v0, "charHandle":I
    if-eqz v0, :cond_0

    .line 1758
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1759
    .local v1, "connId":I
    if-eqz v1, :cond_0

    .line 1761
    if-eqz p8, :cond_2

    .line 1762
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    goto :goto_0

    .line 1764
    :cond_2
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    goto :goto_0
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 10
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "status"    # I
    .param p5, "offset"    # I
    .param p6, "value"    # [B

    .prologue
    .line 1730
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse() - address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v5, 0x0

    .line 1735
    .local v5, "handle":I
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v9

    .line 1736
    .local v9, "entry":Lcom/android/bluetooth/gatt/HandleMap$Entry;
    if-eqz v9, :cond_0

    iget v5, v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1739
    .local v2, "connId":I
    int-to-byte v4, p4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    .line 1741
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    .line 1742
    return-void
.end method

.method serverConnect(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "isDirect"    # Z

    .prologue
    .line 1648
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;Z)V

    .line 1652
    return-void
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 4
    .param p1, "serverIf"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 1655
    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1658
    .local v0, "connId":Ljava/lang/Integer;
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    .line 1661
    return-void

    .line 1660
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method declared-synchronized setAdvManufacturerCodeAndData(I[B)Z
    .locals 4
    .param p1, "manufacturerCode"    # I
    .param p2, "manufacturerData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1136
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 1151
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1140
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    if-eqz v1, :cond_2

    .line 1141
    const-string v1, "BtGatt.GattService"

    const-string v2, "manufacture data is already set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1144
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    .line 1146
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot set manu data, available size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1149
    :cond_3
    iput p1, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerCode:I

    .line 1150
    iput-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method declared-synchronized setAdvServiceData([B)Z
    .locals 5
    .param p1, "serviceData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    if-nez p1, :cond_0

    .line 1126
    :goto_0
    monitor-exit p0

    return v1

    .line 1118
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    if-nez v2, :cond_1

    array-length v2, p1

    add-int/lit8 v0, v2, 0x2

    .line 1121
    .local v0, "extraBytes":I
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 1122
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set service data, available size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getAvailableSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1115
    .end local v0    # "extraBytes":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1118
    :cond_1
    :try_start_2
    array-length v2, p1

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    array-length v3, v3

    sub-int v0, v2, v3

    goto :goto_1

    .line 1125
    .restart local v0    # "extraBytes":I
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1126
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected start()Z
    .locals 2

    .prologue
    .line 188
    const-string v0, "BtGatt.GattService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method startAdvertising(I)V
    .locals 19
    .param p1, "clientIf"    # I

    .prologue
    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1196
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start advertising for app - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getAdvServiceUuids()Ljava/util/List;

    move-result-object v17

    .line 1198
    .local v17, "serviceUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    if-nez v17, :cond_0

    const/4 v13, 0x0

    .line 1202
    .local v13, "advertisingServiceUuidLength":I
    :goto_0
    mul-int/lit8 v2, v13, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1204
    .local v14, "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/ParcelUuid;

    .line 1205
    .local v16, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v18

    .line 1207
    .local v18, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1198
    .end local v13    # "advertisingServiceUuidLength":I
    .end local v14    # "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "parcelUuid":Landroid/os/ParcelUuid;
    .end local v18    # "uuid":Ljava/util/UUID;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_0

    .line 1212
    .restart local v13    # "advertisingServiceUuidLength":I
    .restart local v14    # "advertisingUuidBytes":Ljava/nio/ByteBuffer;
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/16 v8, 0xc8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/gatt/GattService;->mManufacturerData:[B

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceData:[B

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattSetAdvDataNative(IZZZIII[B[B[B)V

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->isAdvertising()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1225
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->gattAdvertiseNative(IZ)V

    .line 1226
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    .line 1227
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 1229
    :cond_2
    return-void
.end method

.method startScan(IZ)V
    .locals 4
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1023
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan() - queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/LeScanRequestArbitrator;->RequestLeScan(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan() - adding client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1033
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScan scan already in progress for appifs-queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startScanWithUuids(IZ[Ljava/util/UUID;)V
    .locals 4
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z
    .param p3, "uuids"    # [Ljava/util/UUID;

    .prologue
    const/4 v3, 0x1

    .line 1043
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScanWithUuids() - queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/LeScanRequestArbitrator;->RequestLeScan(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScanWithUuids() - adding client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ[Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1053
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScanWithUuids scan already in progress for appifs-queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 2

    .prologue
    .line 194
    const-string v0, "BtGatt.GattService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mSearchQueue:Lcom/android/bluetooth/gatt/SearchQueue;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/SearchQueue;->clear()V

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method stopAdvertising()V
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->stopAdvertising(Z)V

    .line 1233
    return-void
.end method

.method stopAdvertising(Z)V
    .locals 2
    .param p1, "forceStop"    # Z

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 1237
    iget v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingClientIf:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattAdvertiseNative(IZ)V

    .line 1238
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    if-eqz p1, :cond_0

    .line 1240
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    .line 1244
    :goto_0
    monitor-exit v1

    .line 1245
    return-void

    .line 1242
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingState:Ljava/lang/Integer;

    goto :goto_0

    .line 1244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopScan(IZ)V
    .locals 3
    .param p1, "appIf"    # I
    .param p2, "isServer"    # Z

    .prologue
    .line 1063
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScan() - queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getScanClient(IZ)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-static {}, Lcom/android/bluetooth/LeScanRequestArbitrator;->instance()Lcom/android/bluetooth/LeScanRequestArbitrator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/LeScanRequestArbitrator;->StopLeScan(I)V

    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->removeScanClient(IZ)V

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    const-string v0, "BtGatt.GattService"

    const-string v1, "stopScan() - queue empty; stopping scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientScanNative(IZ)V

    .line 1075
    :cond_1
    return-void
.end method

.method unregisterClient(I)V
    .locals 3
    .param p1, "clientIf"    # I

    .prologue
    .line 1091
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    .line 1096
    return-void
.end method

.method unregisterServer(I)V
    .locals 3
    .param p1, "serverIf"    # I

    .prologue
    .line 1637
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterServer() - serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 1643
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 1644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    .line 1645
    return-void
.end method

.method writeCharacteristic(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 19
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "writeType"    # I
    .param p9, "authReq"    # I
    .param p10, "value"    # [B

    .prologue
    .line 1298
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCharacteristic() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p8, 0x3

    .line 1304
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 1305
    .local v18, "connId":Ljava/lang/Integer;
    if-eqz v18, :cond_1

    .line 1306
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIIJJIJJII[B)V

    .line 1313
    :goto_0
    return-void

    .line 1312
    :cond_1
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCharacteristic() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method writeDescriptor(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;ILjava/util/UUID;II[B)V
    .locals 24
    .param p1, "clientIf"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "srvcType"    # I
    .param p4, "srvcInstanceId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstanceId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;
    .param p8, "descrInstanceId"    # I
    .param p9, "descrUuid"    # Ljava/util/UUID;
    .param p10, "writeType"    # I
    .param p11, "authReq"    # I
    .param p12, "value"    # [B

    .prologue
    .line 1343
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDescriptor() - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    .line 1348
    .local v23, "connId":Ljava/lang/Integer;
    if-eqz v23, :cond_0

    .line 1349
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p7 .. p7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p9 .. p9}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v10, p6

    move/from16 v15, p8

    move/from16 v20, p10

    move/from16 v21, p11

    move-object/from16 v22, p12

    invoke-direct/range {v2 .. v22}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(IIIJJIJJIJJII[B)V

    .line 1359
    :goto_0
    return-void

    .line 1358
    :cond_0
    const-string v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeDescriptor() - No connection for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
