.class Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;
.super Ljava/lang/Object;
.source "MiuiBluetoothOppObexServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnGetRecvFile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;
    .param p2, "x1"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)V

    return-void
.end method

.method private receiveFile(Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;)I
    .locals 8
    .param p1, "info"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    .prologue
    const/16 v3, 0x1ea

    const/4 v7, 0x0

    .line 631
    const-string v4, "MiuiBluetoothObexOppServerSession"

    const-string v5, "receiveFile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 634
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v2, "updateValues":Landroid/content/ContentValues;
    const-string v4, "_data"

    iget-object v5, p1, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiTransferManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/opp/MiuiTransferManager;->recvFile(Ljava/lang/String;Ljava/lang/String;)J

    .line 641
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 643
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 649
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->interrupt()V

    .line 650
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;->join()V

    .line 651
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    const/4 v5, 0x0

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mUiUpdateThread:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    invoke-static {v4, v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1902(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;)Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$ContentResolverUpdateThread;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 656
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInterupted:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$2000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 670
    :cond_1
    :goto_2
    return v3

    .line 643
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 644
    :catch_0
    move-exception v4

    goto :goto_0

    .line 660
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSuccess:Z
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$2100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransfer:Lcom/android/bluetooth/opp/MiuiTransferManager;
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiTransferManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/MiuiTransferManager;->getDownloadFileUri()Landroid/net/Uri;

    move-result-object v1

    .line 662
    .local v1, "fileUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "updateValues":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 663
    .restart local v2    # "updateValues":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    const-string v3, "_data"

    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppUtility;->getFileAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 667
    const/16 v3, 0xc8

    goto :goto_2

    .line 653
    .end local v1    # "fileUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private recvFile([B)I
    .locals 24
    .param p1, "appParameter"    # [B

    .prologue
    .line 421
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "recvFile"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$402(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    invoke-direct/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;-><init>()V

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$502(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->decodeBytes([B)V

    .line 426
    const-string v20, "MiuiBluetoothObexOppServerSession"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    .line 428
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    .line 430
    .local v10, "length":J
    const/16 v15, 0xa0

    .line 436
    .local v15, "obexResponse":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 437
    const/16 v20, 0xc3

    .line 627
    :goto_0
    return v20

    .line 440
    :cond_0
    const-wide/16 v20, 0x0

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    .line 441
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "length is 0, reject the transfer"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v20, 0xcb

    goto :goto_0

    .line 445
    :cond_1
    if-eqz v13, :cond_2

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 446
    :cond_2
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "name is null or empty, reject the transfer"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v20, 0xc0

    goto :goto_0

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljavax/obex/ObexTransport;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljavax/obex/ObexTransport;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;->getRemoteAddress()Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "destination":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isWhitelisted(Ljava/lang/String;)Z

    move-result v9

    .line 458
    .local v9, "isWhitelisted":Z
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v19, "values":Landroid/content/ContentValues;
    const-string v20, "hint"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v20, "total_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 462
    const-string v20, "mimetype"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v20, "destination"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v20, "direction"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v20, "timestamp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimestamp:J
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$900(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 470
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 471
    .local v16, "root":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/bluetooth"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    .local v4, "base":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v20

    if-nez v20, :cond_4

    .line 473
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive File aborted - can\'t create base directory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1002(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .end local v16    # "root":Ljava/lang/String;
    :goto_2
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "save full name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1000(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v14, 0x1

    .line 487
    .local v14, "needConfirm":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 488
    const-string v20, "confirm"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const/4 v14, 0x0

    .line 492
    :cond_5
    if-eqz v9, :cond_6

    .line 493
    const-string v20, "confirm"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    const/4 v14, 0x0

    .line 497
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 498
    .local v5, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLocalShareInfoId:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1202(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;I)I

    .line 500
    if-eqz v14, :cond_7

    .line 501
    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v8, "in":Landroid/content/Intent;
    const-string v20, "com.android.bluetooth"

    const-class v21, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    .end local v8    # "in":Landroid/content/Intent;
    :cond_7
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "insert contentUri: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mLocalShareInfoId = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLocalShareInfoId:I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 511
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "acquire partial WakeLock"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1400(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 515
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1102(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_9
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mServerBlocking:Z
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 518
    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/32 v22, 0xc350

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1602(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z

    .line 524
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "MSG_CONNECT_TIMEOUT sent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 527
    :catch_0
    move-exception v7

    .line 528
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "Interrupted in onGet blocking"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 531
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "Server unblocked "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-enter p0

    .line 533
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mTimeoutMsgSent:Z
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    :cond_b
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mLocalShareInfoId:I
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 545
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "Unexpected error!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    move/from16 v21, v0

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$602(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;I)I

    .line 549
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "after confirm: userAccepted="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v17, 0xc8

    .line 552
    .local v17, "status":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 557
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 558
    const/16 v17, 0x190

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 562
    const/16 v15, 0xd0

    .line 565
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 567
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 568
    .local v18, "updateValues":Landroid/content/ContentValues;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 569
    const-string v20, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v20, "status"

    const/16 v21, 0xc0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 574
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v20

    const-string v21, "MiuiBluetoothOppRecvingFile"

    invoke-virtual/range {v20 .. v21}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v20

    const-string v21, "MiuiBluetoothOppRecvingFileLength"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mTotalBytes:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    .line 576
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lmiui/analytics/Analytics;->endSession()V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->receiveFile(Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;)I

    move-result v17

    .line 583
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 584
    const/16 v15, 0xd0

    .line 586
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 589
    .end local v18    # "updateValues":Landroid/content/ContentValues;
    :cond_10
    const/16 v20, 0xc8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 591
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 625
    .end local v12    # "msg":Landroid/os/Message;
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mRecvingFile:Z
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$402(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Z)Z

    .line 626
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "return obexResponse: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v15

    .line 627
    goto/16 :goto_0

    .line 454
    .end local v4    # "base":Ljava/io/File;
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "destination":Ljava/lang/String;
    .end local v9    # "isWhitelisted":Z
    .end local v14    # "needConfirm":Z
    .end local v17    # "status":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_12
    const-string v6, "FF:FF:FF:00:00:00"

    .restart local v6    # "destination":Ljava/lang/String;
    goto/16 :goto_1

    .line 477
    .restart local v9    # "isWhitelisted":Z
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_13
    invoke-static {}, Lmiui/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 478
    .restart local v4    # "base":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_14

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v20

    if-nez v20, :cond_14

    .line 479
    const-string v20, "MiuiBluetoothObexOppServerSession"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Receive File aborted - can\'t create base directory "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/bluetooth"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v22, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFileProInfo:Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # setter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mFullFileName:Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1002(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 530
    .restart local v5    # "contentUri":Landroid/net/Uri;
    .restart local v14    # "needConfirm":Z
    :catchall_0
    move-exception v20

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v20

    .line 536
    :catchall_1
    move-exception v20

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v20

    .line 594
    .restart local v17    # "status":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 596
    .restart local v12    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 598
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 601
    .end local v12    # "msg":Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mAccepted:I
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$600(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 611
    :cond_17
    const-string v20, "MiuiBluetoothObexOppServerSession"

    const-string v21, "Rejected incoming request"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/16 v17, 0x1ea

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$800(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v21, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 616
    const/16 v15, 0xc3

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1500(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Landroid/os/Handler;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v12

    .line 619
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v20, 0x3

    move/from16 v0, v20

    iput v0, v12, Landroid/os/Message;->what:I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    move-object/from16 v20, v0

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$1700(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 622
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 381
    const-string v5, "MiuiBluetoothObexOppServerSession"

    const-string v6, "OnGetClass"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketInput:Ljava/io/InputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 389
    .local v1, "length":I
    const-string v5, "MiuiBluetoothObexOppServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-gtz v1, :cond_0

    .line 392
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write(I)V

    .line 393
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 395
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # invokes: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseSocket()V
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)V

    .line 418
    .end local v1    # "length":I
    :goto_1
    return-void

    .line 399
    .restart local v1    # "length":I
    :cond_0
    const/4 v3, 0x0

    .line 400
    .local v3, "readLen":I
    new-array v2, v1, [B

    .line 401
    .local v2, "parameter":[B
    :goto_2
    if-eq v3, v1, :cond_1

    .line 402
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketInput:Ljava/io/InputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$100(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/InputStream;

    move-result-object v5

    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_2

    .line 405
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->recvFile([B)I

    move-result v4

    .line 407
    .local v4, "responseCode":I
    const-string v5, "MiuiBluetoothObexOppServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write(I)V

    .line 409
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # getter for: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->mSocketOutput:Ljava/io/OutputStream;
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$200(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v1    # "length":I
    .end local v2    # "parameter":[B
    .end local v3    # "readLen":I
    .end local v4    # "responseCode":I
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MiuiBluetoothObexOppServerSession"

    const-string v6, "class onGet socket error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession$OnGetRecvFile;->this$0:Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;

    # invokes: Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->safeCloseSocket()V
    invoke-static {v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;->access$300(Lcom/android/bluetooth/opp/MiuiBluetoothOppObexServerSession;)V

    .line 414
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
