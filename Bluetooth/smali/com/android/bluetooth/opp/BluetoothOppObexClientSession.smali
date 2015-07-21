.class public Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "BluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppObexSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;,
        Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BtOppObexClient"

.field private static final V:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mInterrupted:Z

.field private mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transport is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/io/InputStream;[BI)I
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "request"    # Ljavax/obex/HeaderSet;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 708
    if-nez p1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const-string v5, "00:04:48"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 716
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 717
    .local v0, "c":[C
    const/4 v1, 0x1

    .line 718
    .local v1, "firstDot":Z
    const/4 v3, 0x0

    .line 719
    .local v3, "modified":Z
    array-length v5, v0

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 720
    aget-char v5, v0, v2

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_3

    .line 721
    if-nez v1, :cond_2

    .line 722
    const/4 v3, 0x1

    .line 723
    const/16 v5, 0x5f

    aput-char v5, v0, v2

    .line 725
    :cond_2
    const/4 v1, 0x0

    .line 719
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 729
    :cond_4
    if-eqz v3, :cond_0

    .line 730
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 731
    .local v4, "newFilename":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 732
    const-string v5, "BtOppObexClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" as \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" to workaround Poloroid filename quirk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readFully(Ljava/io/InputStream;[BI)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "done":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 117
    sub-int v2, p2, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 118
    .local v1, "got":I
    if-gtz v1, :cond_1

    .line 121
    .end local v1    # "got":I
    :cond_0
    return v0

    .line 119
    .restart local v1    # "got":I
    :cond_1
    add-int/2addr v0, v1

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 112
    return-void
.end method

.method public start(Landroid/os/Handler;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "numShares"    # I

    .prologue
    .line 88
    const-string v0, "BtOppObexClient"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    .line 91
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->start()V

    .line 92
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v0, "BtOppObexClient"

    const-string v1, "Stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->interrupt()V

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->join()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mThread:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unblock()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method
