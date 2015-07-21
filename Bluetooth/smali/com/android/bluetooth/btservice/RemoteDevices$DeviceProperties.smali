.class Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceProperties"
.end annotation


# instance fields
.field private mAddress:[B

.field private mAlias:Ljava/lang/String;

.field private mBluetoothClass:I

.field private mBondState:I

.field private mDeviceType:I

.field private mName:Ljava/lang/String;

.field private mRssi:S

.field private mTrustValue:Z

.field private mUuids:[Landroid/os/ParcelUuid;

.field private retValue:I

.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 144
    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # [B

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    return-object p1
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # S

    .prologue
    .line 130
    iput-short p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)[Landroid/os/ParcelUuid;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[Landroid/os/ParcelUuid;)[Landroid/os/ParcelUuid;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # [Landroid/os/ParcelUuid;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->retValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->retValue:I

    return p1
.end method


# virtual methods
.method getAddress()[B
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 206
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
    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 160
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBluetoothClass:I

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getBondState()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 274
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    monitor-exit v1

    return v0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDeviceType()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    monitor-exit v1

    return v0

    .line 197
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
    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getRssi()S
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_0
    iget-short v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mRssi:S

    monitor-exit v1

    return v0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTrust()Z
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrust. returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$300(Lcom/android/bluetooth/btservice/RemoteDevices;Ljava/lang/String;)V

    .line 234
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z

    monitor-exit v1

    return v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setAlias(Ljava/lang/String;)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 214
    if-nez p1, :cond_1

    .line 215
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAlias:Ljava/lang/String;

    .line 225
    :cond_0
    :goto_0
    monitor-exit v4

    .line 226
    return-void

    .line 217
    :cond_1
    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$200()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    const/16 v6, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    move-result v0

    .line 219
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 220
    const/4 v3, 0x1

    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v5, 0xa

    aput v5, v1, v3

    .line 221
    .local v1, "types":[I
    const/4 v3, 0x1

    new-array v2, v3, [[B

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v3

    .line 222
    .local v2, "values":[[B
    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->devicePropertyChangedCallback([B[I[[B)V

    goto :goto_0

    .line 225
    .end local v0    # "ret":Z
    .end local v1    # "types":[I
    .end local v2    # "values":[[B
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method setBondState(I)V
    .locals 2
    .param p1, "mBondState"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iput p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mBondState:I

    .line 258
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 266
    :cond_0
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTrust(Z)V
    .locals 6
    .param p1, "trustVal"    # Z

    .prologue
    .line 243
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 244
    .local v0, "mTempTrustValue":I
    :goto_0
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mTrustValue:Z

    .line 245
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$100(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 246
    :try_start_0
    # getter for: Lcom/android/bluetooth/btservice/RemoteDevices;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$200()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mAddress:[B

    const/16 v4, 0xc

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->setDevicePropertyNative([BI[B)Z

    .line 249
    monitor-exit v2

    .line 250
    return-void

    .line 243
    .end local v0    # "mTempTrustValue":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .restart local v0    # "mTempTrustValue":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
