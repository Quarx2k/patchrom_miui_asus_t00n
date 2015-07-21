.class final Lcom/android/bluetooth/btservice/BondStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/BondStateMachine$1;,
        Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;,
        Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    }
.end annotation


# static fields
.field static final BONDING_STATE_CHANGE:I = 0x4

.field static final BOND_STATE_BONDED:I = 0x2

.field static final BOND_STATE_BONDING:I = 0x1

.field static final BOND_STATE_NONE:I = 0x0

.field static final CANCEL_BOND:I = 0x2

.field static final CREATE_BOND:I = 0x1

.field private static final DBG:Z = false

.field static final REMOVE_BOND:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothBondStateMachine"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p2, "prop"    # Lcom/android/bluetooth/btservice/AdapterProperties;
    .param p3, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v0, "BondStateMachine:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    .line 65
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 75
    iput-object p3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 77
    iput-object p2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 78
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 80
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/BondStateMachine;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->setProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 230
    .local v0, "addr":[B
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    const-string v2, "BluetoothBondStateMachine"

    const-string v3, "Unexpected error while cancelling bond:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, -0x1

    .line 341
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    .line 342
    .local v2, "hidService":Lcom/android/bluetooth/hid/HidService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 343
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 345
    .local v1, "headsetService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 347
    :cond_0
    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0, p1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 349
    :cond_1
    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 351
    :cond_2
    return-void
.end method

.method private createBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transition"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bond address is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 259
    .local v0, "addr":[B
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->createBondNative([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    const/16 v2, 0x9

    invoke-direct {p0, p1, v4, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 263
    :cond_2
    if-eqz p2, :cond_3

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 266
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method private getUnbondReasonFromHALCode(I)I
    .locals 2
    .param p1, "reason"    # I

    .prologue
    const/16 v0, 0x9

    .line 362
    if-nez p1, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 364
    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    .line 365
    const/4 v0, 0x4

    goto :goto_0

    .line 366
    :cond_2
    if-ne p1, v0, :cond_3

    .line 367
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_3
    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    .line 369
    const/4 v0, 0x2

    goto :goto_0

    .line 370
    :cond_4
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    .line 371
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v0, "BluetoothBondStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;
    .locals 3
    .param p0, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "prop"    # Lcom/android/bluetooth/btservice/AdapterProperties;
    .param p2, "remoteDevices"    # Lcom/android/bluetooth/btservice/RemoteDevices;

    .prologue
    .line 84
    const-string v1, "BluetoothBondStateMachine"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/bluetooth/btservice/BondStateMachine;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 86
    .local v0, "bsm":Lcom/android/bluetooth/btservice/BondStateMachine;
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->start()V

    .line 87
    return-object v0
.end method

.method private removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transition"    # Z

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    .line 243
    .local v0, "addr":[B
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->removeBondNative([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    const-string v2, "BluetoothBondStateMachine"

    const-string v3, "Unexpected error while removing bond:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 247
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I
    .param p3, "reason"    # I

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 273
    .local v0, "devProp":Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    const/16 v2, 0xa

    .line 274
    .local v2, "oldState":I
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v2

    .line 277
    :cond_0
    if-ne v2, p2, :cond_1

    .line 290
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 280
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v3, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    .line 285
    const-string v3, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bond State Change Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OldState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NewState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v5, 0x64

    const/4 v4, -0x1

    .line 320
    invoke-static {}, Lcom/android/bluetooth/hid/HidService;->getHidService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v2

    .line 321
    .local v2, "hidService":Lcom/android/bluetooth/hid/HidService;
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 322
    .local v0, "a2dpService":Lcom/android/bluetooth/a2dp/A2dpService;
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 324
    .local v1, "headsetService":Lcom/android/bluetooth/hfp/HeadsetService;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 326
    invoke-virtual {v2, p1, v5}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 331
    invoke-virtual {v0, p1, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 334
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 336
    invoke-virtual {v1, p1, v5}, Lcom/android/bluetooth/hfp/HeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 338
    :cond_2
    return-void
.end method


# virtual methods
.method bondStateChangeCallback(I[BI)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "address"    # [B
    .param p3, "newState"    # I

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 295
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_0

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No record of the device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 302
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bondStateChangeCallback: Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 306
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    .line 309
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 314
    :goto_0
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 317
    return-void

    .line 310
    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 311
    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 313
    :cond_2
    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 96
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 97
    iput-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 98
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BondStateMachine;->quitNow()V

    .line 92
    return-void
.end method
