.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppObexClientSession.java"

# interfaces
.implements Lcom/android/bluetooth/opp/MiuiOnTransferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBluetoothObexOppClientSession"


# instance fields
.field private final D:Z

.field private mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

.field private mContext:Landroid/content/Context;

.field private mCreatedChannel:Z

.field private mCs:Ljavax/obex/ClientSession;

.field private mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mGetOperation:Ljavax/obex/ClientOperation;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mInput:Ljava/io/InputStream;

.field private mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

.field private mObexClientSession:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private mSelectedChannel:Z

.field private mSendingFile:Z

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mSocket:Ljava/net/Socket;

.field private mSocketInput:Ljava/io/InputStream;

.field private mSocketOutput:Ljava/io/OutputStream;

.field private mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

.field private mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

.field private mWDStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .locals 2
    .param p1, "obexClientSession"    # Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transport"    # Ljavax/obex/ObexTransport;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->D:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSelectedChannel:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCreatedChannel:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mObexClientSession:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 58
    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p2, v1}, Lcom/android/bluetooth/opp/MiuiTransferManager;->getInstance(Landroid/content/Context;I)Lcom/android/bluetooth/opp/MiuiTransferManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->setCallback(Lcom/android/bluetooth/opp/MiuiOnTransferListener;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketInput:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketOutput:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method private createChannel()I
    .locals 8

    .prologue
    .line 172
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "createChannel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v5, :cond_0

    .line 176
    new-instance v5, Ljava/net/ServerSocket;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    .line 177
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "create ServerSocket."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 180
    .local v1, "port":I
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalPort:Ljava/lang/String;

    .line 182
    .end local v1    # "port":I
    :cond_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;

    invoke-direct {v6, p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$1;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 196
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WLAN"

    if-ne v5, v6, :cond_1

    .line 197
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-static {}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    .line 198
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 199
    new-instance v5, Ljava/io/IOException;

    const-string v6, "local ip null!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MiuiBluetoothObexOppClientSession"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    .line 231
    const/16 v4, 0x1f1

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v4

    .line 202
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WIFI_DIRECT"

    if-ne v5, v6, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    const-string v6, "192.168.49.1"

    iput-object v6, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    .line 204
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->genDirectMode(Landroid/content/Context;)V

    .line 205
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v5}, Lcom/android/bluetooth/opp/MiuiTransferManager;->startWD()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    const-wide/32 v5, 0xea60

    :try_start_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 209
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    :goto_1
    :try_start_4
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mWDStarted:Z

    if-nez v5, :cond_3

    .line 213
    new-instance v5, Ljava/io/IOException;

    const-string v6, "wifi-direct mode connect timeout."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 210
    :catch_1
    move-exception v5

    goto :goto_1

    .line 215
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v6, "WIFI_AP"

    if-ne v5, v6, :cond_4

    .line 216
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    const-string v6, "192.168.43.1"

    iput-object v6, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mLocalIp:Ljava/lang/String;

    .line 217
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-virtual {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->genApMode()V

    .line 218
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v7, v7, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mApPassword:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/bluetooth/opp/MiuiTransferManager;->startAP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 220
    const-wide/16 v5, 0x3e8

    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 234
    :cond_3
    :goto_2
    const/16 v4, 0xc8

    .line 237
    .local v4, "status":I
    :try_start_9
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 238
    .local v2, "request":Ljavax/obex/HeaderSet;
    const/4 v5, 0x1

    const-string v6, "CreateChannel"

    invoke-virtual {v2, v5, v6}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 239
    const/16 v5, 0x4c

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-virtual {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->encodeBytes()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 240
    invoke-static {v2}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 242
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v5, v2}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v5

    check-cast v5, Ljavax/obex/ClientOperation;

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    .line 243
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInput:Ljava/io/InputStream;

    .line 244
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "open input stream ok."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v5}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v3

    .line 247
    .local v3, "responseCode":I
    const-string v5, "MiuiBluetoothObexOppClientSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create channel response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 249
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ClientOperation getResponseCode = -1"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 266
    .end local v2    # "request":Ljavax/obex/HeaderSet;
    .end local v3    # "responseCode":I
    :catch_2
    move-exception v0

    .line 267
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_a
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "create channel error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v5, "MiuiBluetoothObexOppClientSession"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 270
    const/16 v4, 0x1f1

    .line 272
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    goto/16 :goto_0

    .line 224
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "status":I
    :cond_4
    :try_start_b
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "error link type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v5, Ljava/io/IOException;

    const-string v6, "link info type error!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 252
    .restart local v2    # "request":Ljavax/obex/HeaderSet;
    .restart local v3    # "responseCode":I
    .restart local v4    # "status":I
    :cond_5
    const/16 v5, 0xa0

    if-ne v3, v5, :cond_6

    .line 253
    :try_start_c
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "createChannel OK!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCreatedChannel:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 272
    :goto_3
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    goto/16 :goto_0

    .line 255
    :cond_6
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_7

    .line 257
    :try_start_d
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "createChannel time out!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v4, 0x1f1

    goto :goto_3

    .line 259
    :cond_7
    const/16 v5, 0xc0

    if-ne v3, v5, :cond_8

    .line 260
    const-string v5, "MiuiBluetoothObexOppClientSession"

    const-string v6, "LinkInfo: link type error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v4, 0x1f1

    goto :goto_3

    .line 263
    :cond_8
    const-string v5, "MiuiBluetoothObexOppClientSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow error! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 264
    const/16 v4, 0x1eb

    goto :goto_3

    .line 272
    .end local v2    # "request":Ljavax/obex/HeaderSet;
    .end local v3    # "responseCode":I
    :catchall_1
    move-exception v5

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    throw v5

    .line 221
    .end local v4    # "status":I
    :catch_3
    move-exception v5

    goto/16 :goto_2
.end method

.method private safeCloseObex()V
    .locals 1

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInput:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInput:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v0}, Ljavax/obex/ClientOperation;->close()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :cond_1
    :goto_1
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_1

    .line 405
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private safeCloseSocket()V
    .locals 1

    .prologue
    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 429
    :catch_0
    move-exception v0

    goto :goto_1

    .line 422
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private selectChannel()I
    .locals 9

    .prologue
    .line 109
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "selectChannel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    invoke-direct {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;-><init>()V

    iput-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    .line 112
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->initDeviceInfo(Landroid/content/Context;)V

    .line 114
    new-instance v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    invoke-direct {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;-><init>()V

    iput-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    .line 116
    const/16 v4, 0xc8

    .line 119
    .local v4, "status":I
    :try_start_0
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 120
    .local v1, "request":Ljavax/obex/HeaderSet;
    const/4 v6, 0x1

    const-string v7, "SelectChannel"

    invoke-virtual {v1, v6, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 121
    const/16 v6, 0x4c

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mDevInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;

    invoke-virtual {v7}, Lcom/android/bluetooth/opp/MiuiBluetoothOppDeviceInfo;->encodeBytes()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 122
    invoke-static {v1}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 124
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v6, v1}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v6

    check-cast v6, Ljavax/obex/ClientOperation;

    iput-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    .line 125
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v6}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInput:Ljava/io/InputStream;

    .line 126
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "open input stream ok."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v6}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v2

    .line 129
    .local v2, "response":Ljavax/obex/HeaderSet;
    invoke-static {v2}, Lcom/android/bluetooth/opp/Constants;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 130
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .local v5, "type":Ljava/lang/String;
    const-string v6, "MiuiBluetoothObexOppClientSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recv header type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mGetOperation:Ljavax/obex/ClientOperation;

    invoke-virtual {v6}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v3

    .line 134
    .local v3, "responseCode":I
    const-string v6, "MiuiBluetoothObexOppClientSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select channel response code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 136
    new-instance v6, Ljava/io/IOException;

    const-string v7, "ClientOperation getResponseCode = -1"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v1    # "request":Ljavax/obex/HeaderSet;
    .end local v2    # "response":Ljavax/obex/HeaderSet;
    .end local v3    # "responseCode":I
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "select channel error!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v6, "MiuiBluetoothObexOppClientSession"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/16 v4, 0x1f1

    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v4

    .line 139
    .restart local v1    # "request":Ljavax/obex/HeaderSet;
    .restart local v2    # "response":Ljavax/obex/HeaderSet;
    .restart local v3    # "responseCode":I
    .restart local v5    # "type":Ljava/lang/String;
    :cond_0
    const/16 v6, 0xa0

    if-ne v3, v6, :cond_4

    .line 140
    :try_start_2
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "select type OK!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSelectedChannel:Z

    .line 142
    const-string v6, "WLAN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    const-string v7, "WLAN"

    iput-object v7, v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    goto :goto_0

    .line 144
    :cond_1
    :try_start_3
    const-string v6, "WIFI_DIRECT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 145
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    const-string v7, "WIFI_DIRECT"

    iput-object v7, v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 165
    .end local v1    # "request":Ljavax/obex/HeaderSet;
    .end local v2    # "response":Ljavax/obex/HeaderSet;
    .end local v3    # "responseCode":I
    .end local v5    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    throw v6

    .line 146
    .restart local v1    # "request":Ljavax/obex/HeaderSet;
    .restart local v2    # "response":Ljavax/obex/HeaderSet;
    .restart local v3    # "responseCode":I
    .restart local v5    # "type":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v6, "WIFI_AP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    const-string v7, "WIFI_AP"

    iput-object v7, v6, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_3
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "response link info type: NONE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v6, Ljava/io/IOException;

    const-string v7, "response type NONE!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 152
    :cond_4
    const/16 v6, 0xd0

    if-ne v3, v6, :cond_5

    .line 153
    const-string v6, "MiuiBluetoothObexOppClientSession"

    const-string v7, "server is not selectChannel!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v4, 0x1f1

    goto :goto_1

    .line 156
    :cond_5
    const-string v6, "MiuiBluetoothObexOppClientSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknow error! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    const/16 v4, 0x1eb

    goto :goto_1
.end method

.method private send()I
    .locals 13

    .prologue
    const/16 v12, 0xc0

    const/4 v11, 0x0

    .line 279
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "send"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    .line 282
    const/16 v6, 0xc8

    .line 284
    .local v6, "status":I
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v8, v9}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->getFileAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 286
    const-string v8, "MiuiBluetoothObexOppClientSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get file name error, file uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v10, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v8, 0x1ec

    .line 343
    :goto_0
    return v8

    .line 289
    :cond_0
    const-string v8, "MiuiBluetoothObexOppClientSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;-><init>()V

    .line 293
    .local v2, "fileInfo":Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    .line 294
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    .line 295
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-wide v8, v8, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    iput-wide v8, v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    .line 296
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/opp/MiuiTransferManager;->sendFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    .line 297
    const-string v8, "MiuiBluetoothObexOppClientSession"

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v10, 0xc0

    invoke-static {v8, v9, v10}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 302
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->encodeBytes()[B

    move-result-object v3

    .line 303
    .local v3, "parameter":[B
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketOutput:Ljava/io/OutputStream;

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 304
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketOutput:Ljava/io/OutputStream;

    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 305
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketOutput:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 307
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSocketInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 308
    .local v5, "responseCode":I
    const-string v8, "MiuiBluetoothObexOppClientSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send file response code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    .line 310
    new-instance v8, Ljava/io/IOException;

    const-string v9, "socket read return -1"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    .end local v3    # "parameter":[B
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "send file error!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v8, "MiuiBluetoothObexOppClientSession"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    const/16 v6, 0x1ea

    .line 340
    iput-boolean v11, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    move v8, v6

    .line 343
    goto/16 :goto_0

    .line 313
    .restart local v3    # "parameter":[B
    .restart local v5    # "responseCode":I
    :cond_1
    const/16 v8, 0xa0

    if-ne v5, v8, :cond_2

    .line 314
    :try_start_2
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "transfer success!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 316
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v7, "updateValues":Landroid/content/ContentValues;
    const-string v8, "current_bytes"

    iget-object v9, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-wide v9, v9, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v0, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v7    # "updateValues":Landroid/content/ContentValues;
    :goto_2
    iput-boolean v11, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    goto :goto_1

    .line 319
    :cond_2
    if-ne v5, v12, :cond_3

    .line 320
    :try_start_3
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "transfer failed! return OBEX_HTTP_BAD_REQUEST"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v6, 0x190

    goto :goto_2

    .line 322
    :cond_3
    const/16 v8, 0xc3

    if-ne v5, v8, :cond_4

    .line 323
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "remote reject!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v6, 0x193

    goto :goto_2

    .line 325
    :cond_4
    const/16 v8, 0xd0

    if-ne v5, v8, :cond_5

    .line 326
    const-string v8, "MiuiBluetoothObexOppClientSession"

    const-string v9, "remote internal error!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/16 v6, 0x1f1

    goto :goto_2

    .line 328
    :cond_5
    const/16 v8, 0xcb

    if-ne v5, v8, :cond_6

    .line 329
    const/16 v6, 0x19b

    goto :goto_2

    .line 331
    :cond_6
    const-string v8, "MiuiBluetoothObexOppClientSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknow error! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    const/16 v6, 0x1eb

    goto :goto_2

    .line 340
    .end local v3    # "parameter":[B
    .end local v5    # "responseCode":I
    :catchall_0
    move-exception v8

    iput-boolean v11, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    throw v8
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 2
    .param p1, "share"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 64
    const-string v0, "MiuiBluetoothObexOppClientSession"

    const-string v1, "addShare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 66
    return-void
.end method

.method public getTransfer()Lcom/android/bluetooth/opp/MiuiTransferManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    return-object v0
.end method

.method public onTransferFailed()V
    .locals 3

    .prologue
    .line 466
    const-string v0, "MiuiBluetoothObexOppClientSession"

    const-string v1, "onTransferFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v2, 0x1f1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mObexClientSession:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->stop()V

    .line 470
    return-void
.end method

.method public onTransferFinished()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onTransferReady(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mType:Ljava/lang/String;

    const-string v1, "WIFI_DIRECT"

    if-ne v0, v1, :cond_0

    .line 449
    if-eqz p1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mLinkInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppLinkInfo;->mWDSSID:Ljava/lang/String;

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mWDStarted:Z

    .line 452
    monitor-enter p0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 454
    monitor-exit p0

    .line 457
    :cond_0
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTransferredBytes(J)V
    .locals 6
    .param p1, "bytes"    # J

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    if-nez v0, :cond_1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 438
    .local v3, "contentUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;J)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    .line 439
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->start()V

    .line 444
    .end local v3    # "contentUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->updateProgress(J)V

    goto :goto_0
.end method

.method public sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 9
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    const/16 v8, 0xc8

    const/16 v7, 0xc0

    const/4 v6, 0x0

    .line 347
    const-string v4, "MiuiBluetoothObexOppClientSession"

    const-string v5, "sendFile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 349
    const/16 v1, 0xc8

    .line 351
    .local v1, "status":I
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v4, v5, v7}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 356
    .local v3, "updateValues":Landroid/content/ContentValues;
    const-string v4, "current_bytes"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v4, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSelectedChannel:Z

    if-nez v4, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->selectChannel()I

    move-result v1

    .line 362
    if-eq v1, v8, :cond_0

    move v2, v1

    .line 396
    .end local v1    # "status":I
    .local v2, "status":I
    :goto_0
    return v2

    .line 367
    .end local v2    # "status":I
    .restart local v1    # "status":I
    :cond_0
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCreatedChannel:Z

    if-nez v4, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->createChannel()I

    move-result v1

    .line 369
    if-eq v1, v8, :cond_1

    move v2, v1

    .line 370
    .end local v1    # "status":I
    .restart local v2    # "status":I
    goto :goto_0

    .line 374
    .end local v2    # "status":I
    .restart local v1    # "status":I
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->send()I

    move-result v1

    .line 377
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 379
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V

    .line 380
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 387
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v4, v5, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 390
    :try_start_1
    iget-object v4, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    :goto_2
    invoke-static {}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->removeTempFile()V

    .line 395
    const-string v4, "MiuiBluetoothObexOppClientSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFile status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 396
    .end local v1    # "status":I
    .restart local v2    # "status":I
    goto :goto_0

    .line 391
    .end local v2    # "status":I
    .restart local v1    # "status":I
    :catch_0
    move-exception v4

    goto :goto_2

    .line 382
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public setAppInfo(Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    .line 77
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "MiuiBluetoothObexOppClientSession"

    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mAppInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public setClientSession(Ljavax/obex/ClientSession;)V
    .locals 2
    .param p1, "client"    # Ljavax/obex/ClientSession;

    .prologue
    .line 104
    const-string v0, "MiuiBluetoothObexOppClientSession"

    const-string v1, "setClientSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCs:Ljavax/obex/ClientSession;

    .line 106
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    const-string v0, "MiuiBluetoothObexOppClientSession"

    const-string v1, "miui obex client stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSelectedChannel:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mCreatedChannel:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mSendingFile:Z

    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->close()V

    .line 90
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseObex()V

    .line 91
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->safeCloseSocket()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 96
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method
