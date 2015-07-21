.class public Lcom/android/bluetooth/opp/BluetoothOppService;
.super Landroid/app/Service;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;,
        Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MEDIA_SCANNED:I = 0x2

.field private static final MEDIA_SCANNED_FAILED:I = 0x3

.field private static final MSG_INCOMING_CONNECTION_RETRY:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final STOP_LISTENER:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "BtOppService"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatchId:I

.field private mBatchs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppBatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIncomingRetries:I

.field private mListenStarted:Z

.field private mMediaScanInProgress:Z

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

.field private mOldChars:Landroid/database/CharArrayBuffer;

.field mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

.field private mPendingConnection:Ljavax/obex/ObexTransport;

.field private mPendingUpdate:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

.field private mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mShares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

.field private mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

.field private userAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 135
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    .line 137
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    .line 146
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 229
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    .line 382
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 1141
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/ContentResolver;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->trimDatabase(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljavax/obex/ObexTransport;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingConnection:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppService;Ljavax/obex/ObexTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->createServerSession(Ljavax/obex/ObexTransport;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/BluetoothOppService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/opp/BluetoothOppService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mIncomingRetries:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startSocketListener()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppService;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    return p1
.end method

.method private createServerSession(Ljavax/obex/ObexTransport;)V
    .locals 3
    .param p1, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 376
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    .line 377
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->preStart()V

    .line 378
    const-string v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get ServerSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for incoming connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method private deleteShare(I)V
    .locals 6
    .param p1, "arrayPos"    # I

    .prologue
    const/4 v5, 0x0

    .line 874
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 882
    .local v2, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-wide v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v1

    .line 883
    .local v1, "i":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 884
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 885
    .local v0, "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->hasShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 887
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->cancelBatch()V

    .line 891
    :cond_0
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v3, :cond_3

    .line 894
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 895
    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 903
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 905
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 908
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 909
    return-void

    .line 896
    .restart local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_3
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v3, :cond_1

    .line 899
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 900
    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_0
.end method

.method private findBatchWithTimeStamp(J)I
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 939
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-wide v1, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mTimestamp:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 944
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 939
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 944
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private insertShare(Landroid/database/Cursor;I)V
    .locals 25
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    .line 641
    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 643
    .local v24, "uriString":Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 644
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 645
    .local v5, "uri":Landroid/net/Uri;
    const-string v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertShare parsed URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    new-instance v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v6, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "direction"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "confirm"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v16, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v18, "timestamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-string v20, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_1
    invoke-direct/range {v3 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V

    .line 685
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isObsolete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 689
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v6, 0x1eb

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 701
    :cond_0
    invoke-virtual {v3}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->isReadyToStart()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_5

    .line 704
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v23

    .line 706
    .local v23, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    if-eqz v23, :cond_1

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_5

    .line 707
    :cond_1
    const-string v4, "BtOppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open file for OUTBOUND info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v6, 0x190

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 709
    iget-object v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 775
    .end local v23    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    :cond_2
    :goto_2
    return-void

    .line 647
    .end local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v5, 0x0

    .line 648
    .restart local v5    # "uri":Landroid/net/Uri;
    const-string v4, "BtOppService"

    const-string v6, "insertShare found null URI at cursor!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 650
    :cond_4
    const/16 v20, 0x0

    goto :goto_1

    .line 713
    .restart local v3    # "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 714
    new-instance v22, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 715
    .local v22, "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 716
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_7

    .line 721
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v6, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 729
    :cond_6
    :goto_3
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v4, :cond_8

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto :goto_2

    .line 722
    :cond_7
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    .line 725
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v6, v1, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_3

    .line 733
    :cond_8
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v4, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto/16 :goto_2

    .line 741
    .end local v22    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_9
    iget-wide v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v21

    .line 742
    .local v21, "i":I
    const/4 v4, -0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_a

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_2

    .line 748
    :cond_a
    new-instance v22, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/opp/BluetoothOppBatch;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 749
    .restart local v22    # "newBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    move-object/from16 v0, v22

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    .line 750
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_b

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShareWithOngoingBatch(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppBatch;ILcom/android/bluetooth/opp/BluetoothOppObexSession;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto/16 :goto_2

    .line 757
    :cond_b
    iget v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/bluetooth/opp/BluetoothOppService;->insertShareWithOngoingBatch(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppBatch;ILcom/android/bluetooth/opp/BluetoothOppObexSession;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto/16 :goto_2
.end method

.method private insertShareWithOngoingBatch(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppBatch;ILcom/android/bluetooth/opp/BluetoothOppObexSession;)Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .locals 2
    .param p1, "transfer"    # Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    .param p2, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .param p3, "arrayPos"    # I
    .param p4, "session"    # Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .prologue
    .line 626
    if-nez p1, :cond_0

    .line 627
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .end local p1    # "transfer":Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p1, p0, v0, p2, p4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    .line 628
    .restart local p1    # "transfer":Lcom/android/bluetooth/opp/BluetoothOppTransfer;
    if-eqz p1, :cond_1

    .line 629
    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 637
    :cond_0
    :goto_0
    return-object p1

    .line 631
    :cond_1
    const-string v0, "BtOppService"

    const-string v1, "Unexpected error! mTransfer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 633
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 634
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private needAction(I)Z
    .locals 2
    .param p1, "arrayPos"    # I

    .prologue
    .line 988
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 989
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const/4 v1, 0x0

    .line 992
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 6
    .param p1, "batch"    # Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .prologue
    const/4 v5, 0x1

    .line 948
    if-nez p1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 955
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 959
    .local v1, "nextBatch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    if-eq v2, v5, :cond_0

    .line 963
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v2, :cond_2

    .line 965
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 966
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    goto :goto_0

    .line 968
    :cond_2
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    if-eqz v2, :cond_3

    .line 973
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerSession:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 975
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->start()V

    .line 976
    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-ne v2, v5, :cond_0

    .line 978
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    goto :goto_0

    .line 956
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I

    .prologue
    const/4 v1, 0x1

    .line 1001
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1002
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    monitor-enter p0

    .line 1003
    :try_start_0
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scanning file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    if-nez v2, :cond_0

    .line 1005
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mMediaScanInProgress:Z

    .line 1006
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppService$MediaScannerNotifier;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;Landroid/os/Handler;)V

    .line 1007
    monitor-exit p0

    .line 1009
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldScanFile(I)Z
    .locals 4
    .param p1, "arrayPos"    # I

    .prologue
    const/4 v1, 0x1

    .line 1015
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1016
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startListener()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z

    .line 217
    :cond_0
    return-void
.end method

.method private startSocketListener()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z

    .line 353
    return-void
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "old"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 912
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 913
    .local v1, "index":I
    if-nez p1, :cond_1

    .line 914
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 935
    .end local p1    # "old":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 916
    .restart local p1    # "old":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_2

    .line 917
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 919
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 920
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 921
    .local v2, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 922
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 924
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_5

    .line 925
    :cond_4
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    .line 927
    :cond_5
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 928
    .local v4, "oldArray":[C
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 929
    .local v3, "newArray":[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 930
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 931
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_6

    .line 932
    new-instance p1, Ljava/lang/String;

    .end local p1    # "old":Ljava/lang/String;
    invoke-direct {p1, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 930
    .restart local p1    # "old":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static trimDatabase(Landroid/content/ContentResolver;)V
    .locals 25
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1023
    const-string v8, "visibility=1"

    .line 1027
    .local v8, "INVISIBLE":Ljava/lang/String;
    const-string v13, "direction=0 AND status>=200 AND visibility=1"

    .line 1031
    .local v13, "WHERE_INVISIBLE_COMPLETE_OUTBOUND":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "direction=0 AND status>=200 AND visibility=1"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 1039
    :goto_0
    const-string v12, "direction=1 AND status>200 AND visibility=1"

    .line 1043
    .local v12, "WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "direction=1 AND status>200 AND visibility=1"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 1050
    :goto_1
    const-string v10, "direction=1 AND status=192"

    .line 1054
    .local v10, "WHERE_INBOUND_INTERRUPTED_ON_POWER_OFF":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1056
    .local v16, "cursorToFile":Landroid/database/Cursor;
    :try_start_2
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    const-string v5, "direction=1 AND status=192"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v16

    .line 1072
    :goto_2
    if-eqz v16, :cond_2

    .line 1073
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1075
    .local v19, "fileName":Ljava/lang/String;
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File to be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v20, "fileToDelete":Ljava/io/File;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 1078
    :cond_0
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "direction=1 AND status=192"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1082
    .end local v19    # "fileName":Ljava/lang/String;
    .end local v20    # "fileToDelete":Ljava/io/File;
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1084
    const/16 v16, 0x0

    .line 1088
    :cond_2
    const-string v9, "direction=1 AND confirm=0"

    .line 1092
    .local v9, "WHERE_CONFIRMATION_PENDING_INBOUND":Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "direction=1 AND confirm=0"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v17

    .line 1101
    :goto_3
    const-string v11, "direction=1 AND status=200 AND visibility=1"

    .line 1104
    .local v11, "WHERE_INBOUND_SUCCESS":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1106
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_4
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "direction=1 AND status=200 AND visibility=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v15

    .line 1120
    :goto_4
    if-nez v15, :cond_5

    .line 1139
    :goto_5
    return-void

    .line 1034
    .end local v9    # "WHERE_CONFIRMATION_PENDING_INBOUND":Ljava/lang/String;
    .end local v10    # "WHERE_INBOUND_INTERRUPTED_ON_POWER_OFF":Ljava/lang/String;
    .end local v11    # "WHERE_INBOUND_SUCCESS":Ljava/lang/String;
    .end local v12    # "WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "cursorToFile":Landroid/database/Cursor;
    :catch_0
    move-exception v18

    .line 1035
    .local v18, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: could not deleted complete outbound shares: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v12    # "WHERE_INVISIBLE_COMPLETE_INBOUND_FAILED":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 1047
    .restart local v18    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: could not deleted complete inbound failed shares: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1059
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v10    # "WHERE_INBOUND_INTERRUPTED_ON_POWER_OFF":Ljava/lang/String;
    .restart local v16    # "cursorToFile":Landroid/database/Cursor;
    :catch_2
    move-exception v18

    .line 1060
    .restart local v18    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v16, :cond_3

    .line 1061
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1063
    :cond_3
    const/16 v16, 0x0

    .line 1064
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1065
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v18

    .line 1066
    .local v18, "e":Landroid/database/CursorWindowAllocationException;
    const/16 v16, 0x0

    .line 1067
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1095
    .end local v18    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v9    # "WHERE_CONFIRMATION_PENDING_INBOUND":Ljava/lang/String;
    :catch_4
    move-exception v18

    .line 1096
    .local v18, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: could not deleted unconfirmed incoming shares "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1109
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v11    # "WHERE_INBOUND_SUCCESS":Ljava/lang/String;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    :catch_5
    move-exception v18

    .line 1110
    .restart local v18    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v15, :cond_4

    .line 1111
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_4
    const/4 v15, 0x0

    .line 1114
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1115
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v18

    .line 1116
    .local v18, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v15, 0x0

    .line 1117
    const-string v2, "BtOppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1124
    .end local v18    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1125
    .local v24, "recordNum":I
    const/16 v2, 0x3e8

    move/from16 v0, v24

    if-le v0, v2, :cond_6

    .line 1126
    move/from16 v0, v24

    add-int/lit16 v0, v0, -0x3e8

    move/from16 v23, v0

    .line 1128
    .local v23, "numToDelete":I
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1129
    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1130
    .local v14, "columnId":I
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1131
    .local v21, "id":J
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1136
    .end local v14    # "columnId":I
    .end local v21    # "id":J
    .end local v23    # "numToDelete":I
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1138
    const/4 v15, 0x0

    .line 1139
    goto/16 :goto_5
.end method

.method private updateFromProvider()V
    .locals 1

    .prologue
    .line 453
    monitor-enter p0

    .line 454
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z

    .line 455
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->start()V

    .line 460
    :cond_0
    monitor-exit p0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateShare(Landroid/database/Cursor;IZ)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "arrayPos"    # I
    .param p3, "userAccepted"    # Z

    .prologue
    .line 778
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 779
    .local v3, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    const-string v8, "status"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 781
    .local v7, "statusColumn":I
    const-string v8, "_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 782
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_7

    .line 783
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "uri"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 788
    :goto_0
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    const-string v9, "hint"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 789
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v9, "_data"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 790
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v9, "mimetype"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 791
    const-string v8, "direction"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 792
    iget-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    const-string v9, "destination"

    invoke-direct {p0, v8, p1, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 793
    const-string v8, "visibility"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 795
    .local v6, "newVisibility":I
    const/4 v1, 0x0

    .line 796
    .local v1, "confirmed":Z
    const-string v8, "confirm"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 799
    .local v4, "newConfirm":I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v8, :cond_1

    if-eqz v6, :cond_1

    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v4, :cond_1

    .line 802
    :cond_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 805
    :cond_1
    iput v6, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 807
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    if-nez v8, :cond_2

    if-eqz v4, :cond_2

    .line 809
    const/4 v1, 0x1

    .line 811
    :cond_2
    iput v4, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 812
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 814
    .local v5, "newStatus":I
    iget v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 816
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 819
    :cond_3
    iput v5, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 820
    const-string v8, "total_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 821
    const-string v8, "current_bytes"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 823
    const-string v8, "timestamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 824
    const-string v8, "scanned"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 826
    if-eqz v1, :cond_4

    .line 829
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 830
    .local v2, "i":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    .line 831
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 832
    .local v0, "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 833
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->setConfirmed()V

    .line 837
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .end local v2    # "i":I
    :cond_4
    iget-wide v8, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/opp/BluetoothOppService;->findBatchWithTimeStamp(J)I

    move-result v2

    .line 838
    .restart local v2    # "i":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_6

    .line 839
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 840
    .restart local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 843
    :cond_5
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v8, :cond_b

    .line 844
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_9

    .line 845
    const-string v8, "BtOppService"

    const-string v9, "Unexpected error! mTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_2
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 865
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->removeBatch(Lcom/android/bluetooth/opp/BluetoothOppBatch;)V

    .line 868
    .end local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    :cond_6
    return-void

    .line 786
    .end local v1    # "confirmed":Z
    .end local v2    # "i":I
    .end local v4    # "newConfirm":I
    .end local v5    # "newStatus":I
    .end local v6    # "newVisibility":I
    :cond_7
    const-string v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateShare() called for ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with null URI"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 824
    .restart local v1    # "confirmed":Z
    .restart local v4    # "newConfirm":I
    .restart local v5    # "newStatus":I
    .restart local v6    # "newVisibility":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 846
    .restart local v0    # "batch":Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .restart local v2    # "i":I
    :cond_9
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_a

    .line 847
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_2

    .line 849
    :cond_a
    const-string v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 854
    :cond_b
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    if-nez v8, :cond_c

    .line 855
    const-string v8, "BtOppService"

    const-string v9, "Unexpected error! mServerTransfer is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_4
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    goto :goto_3

    .line 856
    :cond_c
    iget v8, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v9

    if-ne v8, v9, :cond_d

    .line 857
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    goto :goto_4

    .line 859
    :cond_d
    const-string v8, "BtOppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected error! batch id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t match mServerTransfer id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mServerTransfer:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    invoke-virtual {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->getBatchId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private visibleNotification(I)Z
    .locals 2
    .param p1, "arrayPos"    # I

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 997
    .local v0, "info":Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Bluetooth OPP Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 157
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    .line 159
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    .line 160
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    .line 161
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    .line 162
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    iput v5, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchId:I

    .line 164
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 165
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 166
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 168
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppService$1;

    const-string v3, "trimDatabase"

    invoke-direct {v2, p0, v3, v0}, Lcom/android/bluetooth/opp/BluetoothOppService$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppService;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppService$1;->start()V

    .line 175
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mOppManager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 185
    const-string v2, "BtOppService"

    const-string v3, "Local BT device is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 192
    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 359
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppService$BluetoothShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mSocketListener:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->stop()V

    .line 363
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mBatchs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 372
    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "BtOppService"

    const-string v1, "Local BT device is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->updateFromProvider()V

    .line 206
    const/4 v0, 0x2

    return v0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppService;->startListener()V

    goto :goto_0
.end method
