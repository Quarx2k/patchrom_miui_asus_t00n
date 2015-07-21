.class Lcom/android/bluetooth/btservice/QAdapterProperties;
.super Ljava/lang/Object;
.source "QAdapterProperties.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "QBluetoothAdapterProperties"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdvMode:I

.field private mObject:Ljava/lang/Object;

.field private mQService:Lcom/android/bluetooth/btservice/QAdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/QAdapterService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/bluetooth/btservice/QAdapterService;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mObject:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    .line 65
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "QBluetoothAdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method


# virtual methods
.method adapterPropertyChangedCallback([I[[B)V
    .locals 7
    .param p1, "types"    # [I
    .param p2, "values"    # [[B

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 99
    aget-object v3, p2, v1

    .line 100
    .local v3, "val":[B
    aget v2, p1, v1

    .line 101
    .local v2, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/QAdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v5

    .line 103
    packed-switch v2, :pswitch_data_0

    .line 111
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property change not handled in Java land:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/QAdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 113
    :goto_1
    monitor-exit v5

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :pswitch_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v0

    .line 106
    .local v0, "advMode":I
    iget-object v4, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/QAdapterService;->convertAdvModeFromHal(I)I

    move-result v4

    iput v4, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For property 13 LE_ADV_SET, Adv mode set to:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/btservice/QAdapterProperties;->infoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    .end local v0    # "advMode":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 115
    .end local v2    # "type":I
    .end local v3    # "val":[B
    :cond_0
    return-void

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method advEnableCallback(II)V
    .locals 3
    .param p1, "advEnable"    # I
    .param p2, "advType"    # I

    .prologue
    .line 117
    const-string v1, "advEnableCallback"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advEnableCallback called with advEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " advType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/QAdapterService;->convertAdvModeFromHal(I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adv Mode changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.ADV_ENABLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.ADV_ENABLE"

    iget v2, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/QAdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 126
    const-string v1, "advEnableCallback Intent Sent"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/QAdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    .line 68
    return-void
.end method

.method getLEAdvMode()I
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mAdvMode:I

    monitor-exit v1

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLEAdvMode(I)Z
    .locals 4
    .param p1, "advMode"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "setLEAdvMode: Handle to the Qadapterservice found null. returning false"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/QAdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    monitor-exit v1

    .line 89
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/QAdapterProperties;->mQService:Lcom/android/bluetooth/btservice/QAdapterService;

    const/16 v2, 0xe

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/btservice/QAdapterService;->setLEAdvModeNative(I[B)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
