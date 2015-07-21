.class final Lcom/android/bluetooth/btservice/AdapterState;
.super Lcom/android/internal/util/StateMachine;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterState$1;,
        Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;,
        Lcom/android/bluetooth/btservice/AdapterState$OnState;,
        Lcom/android/bluetooth/btservice/AdapterState$OffState;
    }
.end annotation


# static fields
.field static final ALL_DEVICES_DISCONNECTED:I = 0x16

.field static final BEGIN_DISABLE:I = 0x15

.field private static final DBG:Z = true

.field static final DISABLED:I = 0x18

.field static final DISABLE_TIMEOUT:I = 0x67

.field private static final DISABLE_TIMEOUT_DELAY:I = 0x1f40

.field static final ENABLED_READY:I = 0x3

.field static final ENABLE_TIMEOUT:I = 0x65

.field private static final ENABLE_TIMEOUT_DELAY:I = 0x1f40

.field private static final PROPERTY_OP_DELAY:I = 0x7d0

.field static final SET_SCAN_MODE_TIMEOUT:I = 0x69

.field static final STARTED:I = 0x2

.field static final START_TIMEOUT:I = 0x64

.field private static final START_TIMEOUT_DELAY:I = 0x1388

.field static final STOPPED:I = 0x19

.field static final STOP_TIMEOUT:I = 0x68

.field private static final STOP_TIMEOUT_DELAY:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterState"

.field static final USER_TURN_OFF:I = 0x14

.field static final USER_TURN_OFF_DELAY_MS:I = 0x1f4

.field static final USER_TURN_ON:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

.field private mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

.field private mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V
    .locals 2
    .param p1, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p2, "adapterProperties"    # Lcom/android/bluetooth/btservice/AdapterProperties;

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v0, "BluetoothAdapterState:"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    .line 73
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    .line 74
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterState$OffState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 92
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->addState(Lcom/android/internal/util/State;)V

    .line 93
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 94
    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterState;->setInitialState(Lcom/android/internal/util/State;)V

    .line 96
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/AdapterState;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OffState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOffState:Lcom/android/bluetooth/btservice/AdapterState$OffState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$OnState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mOnState:Lcom/android/bluetooth/btservice/AdapterState$OnState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private infoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v0, "BluetoothAdapterState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public static make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)Lcom/android/bluetooth/btservice/AdapterState;
    .locals 3
    .param p0, "service"    # Lcom/android/bluetooth/btservice/AdapterService;
    .param p1, "adapterProperties"    # Lcom/android/bluetooth/btservice/AdapterProperties;

    .prologue
    .line 99
    const-string v1, "BluetoothAdapterState"

    const-string v2, "make"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/btservice/AdapterState;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    .line 101
    .local v0, "as":Lcom/android/bluetooth/btservice/AdapterState;
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->start()V

    .line 102
    return-object v0
.end method

.method private notifyAdapterStateChange(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 366
    .local v1, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 367
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    const-string v3, "BluetoothAdapterState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyAdapterStateChange after cleanup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v2

    .line 373
    .local v2, "oldState":I
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setState(I)V

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth adapter state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->updateAdapterState(II)V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    .line 111
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_1

    .line 113
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 114
    :cond_1
    return-void
.end method

.method public doQuit()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterState;->quitNow()V

    .line 107
    return-void
.end method

.method public isTurningOff()Z
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOff()Z

    move-result v0

    .line 85
    .local v0, "isTurningOff":Z
    return v0
.end method

.method public isTurningOn()Z
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->isTurningOn()Z

    move-result v0

    .line 79
    .local v0, "isTurningOn":Z
    return v0
.end method

.method stateChangeCallback(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    :try_start_0
    const-string v1, "bluetooth.isEnabled"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 393
    :goto_0
    return-void

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 385
    const-string v1, "bluetooth.isEnabled"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BluetoothAdapterState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting system prop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    const-string v1, "Incorrect status in stateChangeCallback"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->errorLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
