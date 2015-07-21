.class Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
.super Ljava/lang/Thread;
.source "BluetoothOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppService;)V
    .locals 1

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    .line 465
    const-string v0, "Bluetooth Share Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 466
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 470
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 472
    const/4 v13, 0x0

    .line 474
    .local v13, "keepService":Z
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$600(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 481
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1600(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mUpdateThread:Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$602(Lcom/android/bluetooth/opp/BluetoothOppService;Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;

    .line 483
    if-nez v13, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mListenStarted:Z
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$300(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->stopSelf()V

    .line 485
    monitor-exit v1

    .line 620
    :cond_1
    :goto_1
    return-void

    .line 487
    :cond_2
    monitor-exit v1

    goto :goto_1

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mPendingUpdate:Z
    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1602(Lcom/android/bluetooth/opp/BluetoothOppService;Z)Z

    .line 490
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    const/4 v8, 0x0

    .line 493
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 506
    :goto_2
    if-eqz v8, :cond_1

    .line 510
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 512
    const/4 v7, 0x0

    .line 514
    .local v7, "arrayPos":I
    const/4 v13, 0x0

    .line 515
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    .line 517
    .local v12, "isAfterLast":Z
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 533
    .local v11, "idColumn":I
    :goto_3
    if-eqz v12, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_15

    .line 534
    :cond_4
    if-eqz v12, :cond_7

    .line 541
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v14, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 544
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto :goto_3

    .line 495
    .end local v7    # "arrayPos":I
    .end local v11    # "idColumn":I
    .end local v12    # "isAfterLast":Z
    :catch_0
    move-exception v9

    .line 496
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v8, :cond_6

    .line 497
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_6
    const/4 v8, 0x0

    .line 500
    const-string v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 501
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 502
    .local v9, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v8, 0x0

    .line 503
    const-string v0, "BtOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 546
    .end local v9    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v7    # "arrayPos":I
    .restart local v11    # "idColumn":I
    .restart local v12    # "isAfterLast":Z
    :cond_7
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 548
    .local v10, "id":I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_b

    .line 549
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 551
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 552
    const/4 v13, 0x1

    .line 554
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 555
    const/4 v13, 0x1

    .line 557
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 558
    const/4 v13, 0x1

    .line 561
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 562
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 563
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    goto/16 :goto_3

    .line 565
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mShares:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1700(Lcom/android/bluetooth/opp/BluetoothOppService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v6, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 567
    .local v6, "arrayId":I
    if-ge v6, v10, :cond_d

    .line 570
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 571
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v14, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    .line 573
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->deleteShare(I)V
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2000(Lcom/android/bluetooth/opp/BluetoothOppService;I)V

    goto/16 :goto_3

    .line 574
    :cond_d
    if-ne v6, v10, :cond_11

    .line 577
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->userAccepted:Z
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2400(Lcom/android/bluetooth/opp/BluetoothOppService;)Z

    move-result v1

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->updateShare(Landroid/database/Cursor;IZ)V
    invoke-static {v0, v8, v7, v1}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2500(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;IZ)V

    .line 578
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 579
    const/4 v13, 0x1

    .line 581
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 582
    const/4 v13, 0x1

    .line 584
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 585
    const/4 v13, 0x1

    .line 588
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 589
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 590
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    goto/16 :goto_3

    .line 595
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->insertShare(Landroid/database/Cursor;I)V
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2100(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)V

    .line 597
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->shouldScanFile(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1800(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->scanFile(Landroid/database/Cursor;I)Z
    invoke-static {v0, v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1900(Lcom/android/bluetooth/opp/BluetoothOppService;Landroid/database/Cursor;I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 598
    const/4 v13, 0x1

    .line 600
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->visibleNotification(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2200(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 601
    const/4 v13, 0x1

    .line 603
    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # invokes: Lcom/android/bluetooth/opp/BluetoothOppService;->needAction(I)Z
    invoke-static {v0, v7}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$2300(Lcom/android/bluetooth/opp/BluetoothOppService;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 604
    const/4 v13, 0x1

    .line 606
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 607
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 608
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    goto/16 :goto_3

    .line 614
    .end local v6    # "arrayId":I
    .end local v10    # "id":I
    :cond_15
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 616
    const/4 v8, 0x0

    .line 618
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppService$UpdateThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppService;

    # getter for: Lcom/android/bluetooth/opp/BluetoothOppService;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppService;->access$1500(Lcom/android/bluetooth/opp/BluetoothOppService;)Lcom/android/bluetooth/opp/BluetoothOppNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    goto/16 :goto_0
.end method
