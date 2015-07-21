.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# static fields
.field private static final sSleepTime:I = 0x1f4


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mNumShares:I

.field private mTransport1:Ljavax/obex/ObexTransport;

.field private oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transport"    # Ljavax/obex/ObexTransport;
    .param p4, "initialNumShares"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 203
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 198
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 204
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 205
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 206
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 207
    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 208
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    .line 209
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 210
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "BtOppObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    return-void
.end method

.method private connect(I)V
    .locals 7
    .param p1, "numShares"    # I

    .prologue
    const/4 v6, 0x0

    .line 293
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 296
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 297
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 298
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    iget-boolean v3, v3, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/obex/ClientSession;->reduceMTU(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_1

    .line 307
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 308
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 309
    .local v2, "hs":Ljavax/obex/HeaderSet;
    const/16 v3, 0xc0

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 310
    monitor-enter p0

    .line 311
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 312
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 315
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :cond_1
    :goto_1
    monitor-enter p0

    .line 322
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 323
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    return-void

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e1":Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 317
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "hs":Ljavax/obex/HeaderSet;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private disconnect()V
    .locals 4

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 267
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->oppmanager:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 269
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_1

    .line 275
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 277
    const-string v1, "BtOppObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_2

    .line 284
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 290
    :cond_2
    :goto_2
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 280
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 286
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BtOppObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doSend()V
    .locals 10

    .prologue
    const/16 v9, 0xc8

    .line 267
    const/16 v4, 0xc8

    .line 270
    .local v4, "status":I
    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v5, :cond_0

    .line 272
    const-wide/16 v5, 0x32

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v4, 0x1ea

    .line 275
    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v5, :cond_1

    .line 279
    const/16 v4, 0x1f1

    .line 281
    :cond_1
    if-ne v4, v9, :cond_3

    .line 283
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 287
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v3, "start":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 291
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v5

    const-string v6, "MiuiBluetoothOppSendingFile"

    invoke-virtual {v5, v6}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v5

    const-string v6, "MiuiBluetoothOppSendingFileLength"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-wide v7, v7, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v5, v6, v7, v8}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    .line 293
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/analytics/Analytics;->endSession()V

    .line 295
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v4

    .line 299
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "end":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    .end local v1    # "end":Landroid/content/Intent;
    .end local v3    # "start":Landroid/content/Intent;
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 311
    :goto_2
    if-ne v4, v9, :cond_4

    .line 312
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 313
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x0

    iput v5, v2, Landroid/os/Message;->what:I

    .line 314
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 323
    :goto_3
    return-void

    .line 304
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v4, v5, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_1

    .line 308
    :cond_3
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v5, v6, v4}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_2

    .line 317
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 318
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v2, Landroid/os/Message;->what:I

    .line 319
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v4, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 320
    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 321
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string v0, "BtOppObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when sending file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 375
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 376
    .local v1, "fileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 398
    :goto_0
    return-object v1

    .line 388
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v2, "updateValues":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 391
    .local v0, "contentUri":Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .locals 32
    .param p1, "fileInfo"    # Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .prologue
    .line 402
    const/4 v11, 0x0

    .line 403
    .local v11, "error":Z
    const/16 v20, -0x1

    .line 404
    .local v20, "responseCode":I
    const/16 v22, 0xc8

    .line 405
    .local v22, "status":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 407
    .local v5, "contentUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 409
    .local v2, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    const-wide/16 v6, 0x0

    .line 410
    .local v6, "position":J
    new-instance v18, Ljavax/obex/HeaderSet;

    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    .line 412
    .local v18, "reply":Ljavax/obex/HeaderSet;
    new-instance v19, Ljavax/obex/HeaderSet;

    invoke-direct/range {v19 .. v19}, Ljavax/obex/HeaderSet;-><init>()V

    .line 413
    .local v19, "request":Ljavax/obex/HeaderSet;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 414
    const/16 v3, 0x42

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v28, 0xc0

    move/from16 v0, v28

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 420
    const/16 v3, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 421
    const/16 v16, 0x0

    .line 422
    .local v16, "putOperation":Ljavax/obex/ClientOperation;
    const/4 v15, 0x0

    .line 423
    .local v15, "outputStream":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 425
    .local v12, "inputStream":Ljava/io/InputStream;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 426
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 427
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object/from16 v16, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 438
    :goto_0
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 439
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 440
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 442
    if-nez v11, :cond_0

    .line 445
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    .line 446
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v12

    .line 454
    :cond_0
    :goto_1
    if-nez v11, :cond_1

    .line 455
    :try_start_6
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v26, "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v3, "status"

    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 461
    .end local v26    # "updateValues":Landroid/content/ContentValues;
    :cond_1
    if-nez v11, :cond_1e

    .line 462
    const/16 v17, 0x0

    .line 463
    .local v17, "readLength":I
    const/4 v13, 0x0

    .line 464
    .local v13, "okToProceed":Z
    const-wide/16 v23, 0x0

    .line 465
    .local v23, "timestamp":J
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v14

    .line 467
    .local v14, "outputBufferSize":I
    new-array v9, v14, [B

    .line 468
    .local v9, "buffer":[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    const/16 v4, 0x4000

    invoke-direct {v8, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 470
    .local v8, "a":Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_17

    .line 471
    # invokes: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v8, v9, v14}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v17

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v4

    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v28, 0xc350

    move-wide/from16 v0, v28

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 476
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 477
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 478
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 481
    const/4 v3, 0x0

    :try_start_8
    move/from16 v0, v17

    invoke-virtual {v15, v9, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 483
    move/from16 v0, v17

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 485
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_15

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    monitor-enter p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 488
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 489
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 500
    :goto_2
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 502
    const/16 v3, 0x90

    move/from16 v0, v20

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa0

    move/from16 v0, v20

    if-ne v0, v3, :cond_16

    .line 505
    :cond_2
    const/4 v13, 0x1

    .line 506
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .restart local v26    # "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v25, v2

    .line 515
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v26    # "updateValues":Landroid/content/ContentValues;
    .local v25, "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_3
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_1c

    if-eqz v13, :cond_1c

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_1c

    .line 519
    const/4 v3, 0x0

    invoke-virtual {v8, v9, v3, v14}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-result v17

    .line 520
    const/16 v27, 0x0

    .line 521
    .local v27, "writtenLength":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    .line 523
    const/4 v3, 0x0

    :try_start_c
    move/from16 v0, v17

    invoke-virtual {v15, v9, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 524
    move/from16 v27, v17

    goto :goto_4

    .line 427
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v13    # "okToProceed":Z
    .end local v14    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v23    # "timestamp":J
    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v27    # "writtenLength":I
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_0
    move-exception v3

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 604
    :catch_0
    move-exception v10

    .line 605
    .local v10, "e":Ljava/io/IOException;
    :goto_5
    :try_start_f
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 613
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 615
    if-eqz v2, :cond_3

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 617
    const/4 v2, 0x0

    .line 620
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 621
    if-nez v11, :cond_4

    .line 622
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 623
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_2a

    .line 625
    const/16 v3, 0xa0

    move/from16 v0, v20

    if-eq v0, v3, :cond_4

    .line 626
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v28, 0x0

    cmp-long v3, v3, v28

    if-nez v3, :cond_2b

    const/16 v3, 0xcb

    move/from16 v0, v20

    if-ne v0, v3, :cond_2b

    .line 629
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 631
    const/16 v22, 0x193

    .line 650
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 652
    sget-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v3, :cond_5

    .line 657
    const/16 v22, 0xc8

    .line 660
    :cond_5
    if-eqz v12, :cond_6

    .line 661
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 663
    :cond_6
    if-eqz v16, :cond_7

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 677
    .end local v10    # "e":Ljava/io/IOException;
    :cond_7
    :goto_7
    return v22

    .line 431
    :catch_1
    move-exception v10

    .line 432
    .restart local v10    # "e":Ljava/io/IOException;
    const/16 v22, 0x1f0

    .line 433
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 435
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when put HeaderSet "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 436
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 440
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 606
    :catch_2
    move-exception v10

    .line 607
    .local v10, "e":Ljava/lang/NullPointerException;
    :goto_8
    :try_start_14
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 613
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 615
    if-eqz v2, :cond_8

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 617
    const/4 v2, 0x0

    .line 620
    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 621
    if-nez v11, :cond_9

    .line 622
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 623
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_2e

    .line 625
    const/16 v3, 0xa0

    move/from16 v0, v20

    if-eq v0, v3, :cond_9

    .line 626
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v28, 0x0

    cmp-long v3, v3, v28

    if-nez v3, :cond_2f

    const/16 v3, 0xcb

    move/from16 v0, v20

    if-ne v0, v3, :cond_2f

    .line 629
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 631
    const/16 v22, 0x193

    .line 650
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 652
    sget-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v3, :cond_a

    .line 657
    const/16 v22, 0xc8

    .line 660
    :cond_a
    if-eqz v12, :cond_b

    .line 661
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 663
    :cond_b
    if-eqz v16, :cond_7

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_7

    .line 666
    :catch_3
    move-exception v10

    .line 667
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 672
    const/16 v22, 0x193

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    :goto_a
    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_7

    .line 447
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 448
    .restart local v10    # "e":Ljava/io/IOException;
    const/16 v22, 0x1f0

    .line 449
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 450
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when openOutputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 451
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 478
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v13    # "okToProceed":Z
    .restart local v14    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v23    # "timestamp":J
    :catchall_2
    move-exception v3

    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v3
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 608
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v13    # "okToProceed":Z
    .end local v14    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v23    # "timestamp":J
    :catch_5
    move-exception v10

    .line 609
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_b
    :try_start_19
    invoke-virtual {v10}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 613
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 615
    if-eqz v2, :cond_c

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 617
    const/4 v2, 0x0

    .line 620
    :cond_c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 621
    if-nez v11, :cond_d

    .line 622
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 623
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_32

    .line 625
    const/16 v3, 0xa0

    move/from16 v0, v20

    if-eq v0, v3, :cond_d

    .line 626
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v28, 0x0

    cmp-long v3, v3, v28

    if-nez v3, :cond_33

    const/16 v3, 0xcb

    move/from16 v0, v20

    if-ne v0, v3, :cond_33

    .line 629
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 631
    const/16 v22, 0x193

    .line 650
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 652
    sget-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v3, :cond_e

    .line 657
    const/16 v22, 0xc8

    .line 660
    :cond_e
    if-eqz v12, :cond_f

    .line 661
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 663
    :cond_f
    if-eqz v16, :cond_7

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_7

    .line 666
    :catch_6
    move-exception v10

    .line 667
    .local v10, "e":Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 672
    const/16 v22, 0x193

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_a

    .line 489
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v13    # "okToProceed":Z
    .restart local v14    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v23    # "timestamp":J
    :catchall_3
    move-exception v3

    :try_start_1b
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v3
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 611
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v13    # "okToProceed":Z
    .end local v14    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v23    # "timestamp":J
    :catchall_4
    move-exception v3

    .line 613
    :goto_d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 615
    if-eqz v2, :cond_10

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 617
    const/4 v2, 0x0

    .line 620
    :cond_10
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 621
    if-nez v11, :cond_11

    .line 622
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 623
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_26

    .line 625
    const/16 v4, 0xa0

    move/from16 v0, v20

    if-eq v0, v4, :cond_11

    .line 626
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v4, v28, v30

    if-nez v4, :cond_27

    const/16 v4, 0xcb

    move/from16 v0, v20

    if-ne v0, v4, :cond_27

    .line 629
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 631
    const/16 v22, 0x193

    .line 650
    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 652
    sget-boolean v4, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v4, :cond_12

    .line 657
    const/16 v22, 0xc8

    .line 660
    :cond_12
    if-eqz v12, :cond_13

    .line 661
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 663
    :cond_13
    if-eqz v16, :cond_14

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c

    .line 611
    :cond_14
    :goto_f
    throw v3

    .line 493
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v13    # "okToProceed":Z
    .restart local v14    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v23    # "timestamp":J
    :cond_15
    :try_start_1e
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    monitor-enter p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 496
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 497
    monitor-exit p0

    goto/16 :goto_2

    :catchall_5
    move-exception v3

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v3

    .line 511
    :cond_16
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Remote reject, Response code is "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :cond_17
    move-object/from16 v25, v2

    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_3

    .line 525
    .restart local v27    # "writtenLength":I
    :catch_7
    move-exception v10

    .line 526
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_21
    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Try again"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 527
    const-string v3, "BtOppObexClient"

    const-string v4, "Try Again Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_21 .. :try_end_21} :catch_e
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 529
    const-wide/16 v3, 0xa

    :try_start_22
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_8
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    goto/16 :goto_4

    .line 530
    :catch_8
    move-exception v21

    .line 531
    .local v21, "slpe":Ljava/lang/InterruptedException;
    :try_start_23
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Interrupted while Try Again"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 604
    .end local v10    # "e":Ljava/io/IOException;
    .end local v21    # "slpe":Ljava/lang/InterruptedException;
    .end local v27    # "writtenLength":I
    :catch_9
    move-exception v10

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_5

    .line 535
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v10    # "e":Ljava/io/IOException;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v27    # "writtenLength":I
    :cond_18
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Not Try Again Exception: Throw"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    throw v10

    .line 606
    .end local v10    # "e":Ljava/io/IOException;
    .end local v27    # "writtenLength":I
    :catch_a
    move-exception v10

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_8

    .line 542
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v27    # "writtenLength":I
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 544
    const/16 v3, 0x90

    move/from16 v0, v20

    if-eq v0, v3, :cond_1a

    const/16 v3, 0xa0

    move/from16 v0, v20

    if-eq v0, v3, :cond_1a

    .line 547
    const/4 v13, 0x0

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :goto_10
    move-object/from16 v25, v2

    .line 565
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_3

    .line 549
    :cond_1a
    move/from16 v0, v17

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 556
    if-nez v25, :cond_1b

    .line 557
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_23} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    .line 559
    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_24
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->start()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    goto :goto_10

    .line 561
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_1b
    :try_start_25
    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->updateProgress(J)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto :goto_10

    .line 568
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .end local v27    # "writtenLength":I
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_1c
    if-eqz v25, :cond_3a

    .line 570
    :try_start_26
    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 571
    invoke-virtual/range {v25 .. v25}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->join()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    .line 572
    const/4 v2, 0x0

    .line 574
    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :try_start_27
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 575
    .restart local v26    # "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v3, v5, v0, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_10
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    .line 583
    .end local v26    # "updateValues":Landroid/content/ContentValues;
    :goto_11
    const/16 v3, 0xc3

    move/from16 v0, v20

    if-eq v0, v3, :cond_1d

    const/16 v3, 0xc6

    move/from16 v0, v20

    if-ne v0, v3, :cond_23

    .line 585
    :cond_1d
    :try_start_28
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Remote reject file "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v28, " length "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_28} :catch_5
    .catchall {:try_start_28 .. :try_end_28} :catchall_4

    .line 587
    const/16 v22, 0x193

    .line 613
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v13    # "okToProceed":Z
    .end local v14    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v23    # "timestamp":J
    :cond_1e
    :goto_12
    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 615
    if-eqz v2, :cond_1f

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;->interrupt()V

    .line 617
    const/4 v2, 0x0

    .line 620
    :cond_1f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 621
    if-nez v11, :cond_20

    .line 622
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v20

    .line 623
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_36

    .line 625
    const/16 v3, 0xa0

    move/from16 v0, v20

    if-eq v0, v3, :cond_20

    .line 626
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v28, 0x0

    cmp-long v3, v3, v28

    if-nez v3, :cond_37

    const/16 v3, 0xcb

    move/from16 v0, v20

    if-ne v0, v3, :cond_37

    .line 629
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 631
    const/16 v22, 0x193

    .line 650
    :cond_20
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 652
    sget-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v3, :cond_21

    .line 657
    const/16 v22, 0xc8

    .line 660
    :cond_21
    if-eqz v12, :cond_22

    .line 661
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 663
    :cond_22
    if-eqz v16, :cond_7

    .line 664
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_b

    goto/16 :goto_7

    .line 666
    :catch_b
    move-exception v10

    .line 667
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 672
    const/16 v22, 0x193

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_a

    .line 588
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v13    # "okToProceed":Z
    .restart local v14    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v23    # "timestamp":J
    :cond_23
    const/16 v3, 0xcf

    move/from16 v0, v20

    if-ne v0, v3, :cond_24

    .line 589
    :try_start_2a
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Remote reject file type "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v22, 0x196

    goto/16 :goto_12

    .line 591
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v3

    if-nez v3, :cond_25

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_25

    .line 592
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SendFile finished send out file "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v28, " length "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_12

    .line 596
    :cond_25
    const/4 v11, 0x1

    .line 597
    const/16 v22, 0x1ea

    .line 598
    invoke-virtual/range {v16 .. v16}, Ljavax/obex/ClientOperation;->abort()V

    .line 600
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SendFile interrupted when send out file "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v28, " at "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v28, " of "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_2a} :catch_5
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4

    goto/16 :goto_12

    .line 666
    .end local v8    # "a":Ljava/io/BufferedInputStream;
    .end local v9    # "buffer":[B
    .end local v13    # "okToProceed":Z
    .end local v14    # "outputBufferSize":I
    .end local v17    # "readLength":I
    .end local v23    # "timestamp":J
    :catch_c
    move-exception v10

    .line 667
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v4, "BtOppObexClient"

    const-string v28, "Error when closing stream after send"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v28, v0

    cmp-long v4, v6, v28

    if-eqz v4, :cond_14

    .line 672
    const/16 v22, 0x193

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto/16 :goto_f

    .line 646
    .end local v10    # "e":Ljava/io/IOException;
    :cond_26
    const/16 v22, 0x1f1

    goto/16 :goto_e

    .line 633
    :cond_27
    :try_start_2b
    const-string v4, "BtOppObexClient"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Response error code is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_c

    .line 634
    const/16 v22, 0x1ef

    .line 635
    const/16 v4, 0xcf

    move/from16 v0, v20

    if-ne v0, v4, :cond_28

    .line 636
    const/16 v22, 0x196

    .line 638
    :cond_28
    const/16 v4, 0xc3

    move/from16 v0, v20

    if-eq v0, v4, :cond_29

    const/16 v4, 0xc6

    move/from16 v0, v20

    if-ne v0, v4, :cond_11

    .line 640
    :cond_29
    const/16 v22, 0x193

    goto/16 :goto_e

    .line 666
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v10

    .line 667
    const-string v3, "BtOppObexClient"

    const-string v4, "Error when closing stream after send"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_7

    .line 672
    const/16 v22, 0x193

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    goto/16 :goto_a

    .line 646
    :cond_2a
    const/16 v22, 0x1f1

    goto/16 :goto_6

    .line 633
    :cond_2b
    :try_start_2c
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Response error code is "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_d

    .line 634
    const/16 v22, 0x1ef

    .line 635
    const/16 v3, 0xcf

    move/from16 v0, v20

    if-ne v0, v3, :cond_2c

    .line 636
    const/16 v22, 0x196

    .line 638
    :cond_2c
    const/16 v3, 0xc3

    move/from16 v0, v20

    if-eq v0, v3, :cond_2d

    const/16 v3, 0xc6

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    .line 640
    :cond_2d
    const/16 v22, 0x193

    goto/16 :goto_6

    .line 646
    .local v10, "e":Ljava/lang/NullPointerException;
    :cond_2e
    const/16 v22, 0x1f1

    goto/16 :goto_9

    .line 633
    :cond_2f
    :try_start_2d
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Response error code is "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_3

    .line 634
    const/16 v22, 0x1ef

    .line 635
    const/16 v3, 0xcf

    move/from16 v0, v20

    if-ne v0, v3, :cond_30

    .line 636
    const/16 v22, 0x196

    .line 638
    :cond_30
    const/16 v3, 0xc3

    move/from16 v0, v20

    if-eq v0, v3, :cond_31

    const/16 v3, 0xc6

    move/from16 v0, v20

    if-ne v0, v3, :cond_9

    .line 640
    :cond_31
    const/16 v22, 0x193

    goto/16 :goto_9

    .line 646
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_32
    const/16 v22, 0x1f1

    goto/16 :goto_c

    .line 633
    :cond_33
    :try_start_2e
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Response error code is "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_6

    .line 634
    const/16 v22, 0x1ef

    .line 635
    const/16 v3, 0xcf

    move/from16 v0, v20

    if-ne v0, v3, :cond_34

    .line 636
    const/16 v22, 0x196

    .line 638
    :cond_34
    const/16 v3, 0xc3

    move/from16 v0, v20

    if-eq v0, v3, :cond_35

    const/16 v3, 0xc6

    move/from16 v0, v20

    if-ne v0, v3, :cond_d

    .line 640
    :cond_35
    const/16 v22, 0x193

    goto/16 :goto_c

    .line 646
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_36
    const/16 v22, 0x1f1

    goto/16 :goto_13

    .line 633
    :cond_37
    :try_start_2f
    const-string v3, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Response error code is "

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_b

    .line 634
    const/16 v22, 0x1ef

    .line 635
    const/16 v3, 0xcf

    move/from16 v0, v20

    if-ne v0, v3, :cond_38

    .line 636
    const/16 v22, 0x196

    .line 638
    :cond_38
    const/16 v3, 0xc3

    move/from16 v0, v20

    if-eq v0, v3, :cond_39

    const/16 v3, 0xc6

    move/from16 v0, v20

    if-ne v0, v3, :cond_20

    .line 640
    :cond_39
    const/16 v22, 0x193

    goto/16 :goto_13

    .line 611
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v8    # "a":Ljava/io/BufferedInputStream;
    .restart local v9    # "buffer":[B
    .restart local v13    # "okToProceed":Z
    .restart local v14    # "outputBufferSize":I
    .restart local v17    # "readLength":I
    .restart local v23    # "timestamp":J
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catchall_6
    move-exception v3

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_d

    .line 608
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_e
    move-exception v10

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_b

    .line 578
    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :catch_f
    move-exception v3

    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_11

    :catch_10
    move-exception v3

    goto/16 :goto_11

    .end local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    :cond_3a
    move-object/from16 v2, v25

    .end local v25    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    .restart local v2    # "uiUpdateThread":Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ContentResolverUpdateThread;
    goto/16 :goto_11
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 215
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 217
    return-void
.end method

.method public interrupt()V
    .locals 4

    .prologue
    .line 687
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 697
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 698
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 703
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 704
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BtOppObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 221
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 224
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 227
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mNumShares:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect(I)V

    .line 236
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e1":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_0

    .line 241
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v2, "BtOppObexClient"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 244
    :catch_1
    move-exception v2

    goto :goto_1

    .line 249
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 251
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 255
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 256
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 257
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method
