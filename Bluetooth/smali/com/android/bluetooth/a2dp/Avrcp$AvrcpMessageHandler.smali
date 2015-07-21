.class final Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
.super Landroid/os/Handler;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvrcpMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 517
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;Lcom/android/bluetooth/a2dp/Avrcp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/a2dp/Avrcp;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/bluetooth/a2dp/Avrcp$1;

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;-><init>(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 523
    :sswitch_0
    const-string v23, "Avrcp"

    const-string v24, "**MESSAGE_PLAYSTATUS_TIMEOUT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v24

    monitor-enter v24

    .line 525
    :try_start_0
    new-instance v21, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 526
    .local v21, "val":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 527
    monitor-exit v24

    goto :goto_0

    .line 530
    .end local v21    # "val":Ljava/lang/Integer;
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 529
    .restart local v21    # "val":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 530
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 533
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->def_attrib:[B
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1400(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->def_attrib:[B
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1400(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v25

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getListPlayerappAttrRspNative(B[B)Z
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$500(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto :goto_0

    .line 536
    :pswitch_2
    const-string v23, "Avrcp"

    const-string v24, "GET_VALUE_IDS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attr:B

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_default:[B
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_default:[B
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1700(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v25

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayerAppValueRspNative(B[B)Z
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$600(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 539
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_repmode:[B
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1500(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_repmode:[B
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1500(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v25

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayerAppValueRspNative(B[B)Z
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$600(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 542
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_shufmode:[B
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1600(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->value_shufmode:[B
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1600(Lcom/android/bluetooth/a2dp/Avrcp;)[B

    move-result-object v25

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayerAppValueRspNative(B[B)Z
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$600(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 550
    :pswitch_5
    const/4 v12, 0x0

    .line 551
    .local v12, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 552
    .local v17, "retVal":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    .line 553
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .local v13, "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v9

    aput-byte v23, v17, v12

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v9

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 555
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1800(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->repeat_value:B

    move/from16 v23, v0

    aput-byte v23, v17, v13

    .line 552
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 556
    .end local v12    # "j":I
    .restart local v13    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v9

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 557
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->settingValues:Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1800(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-byte v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$localPlayerSettings;->shuffle_value:B

    move/from16 v23, v0

    aput-byte v23, v17, v13

    goto :goto_2

    .line 559
    .end local v12    # "j":I
    .restart local v13    # "j":I
    :cond_3
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    const/16 v23, 0x0

    aput-byte v23, v17, v13

    goto :goto_2

    .line 562
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v17

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->SendCurrentPlayerValueRspNative(B[B)Z
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1000(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 565
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v17    # "retVal":[B
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->SendSetPlayerAppRspNative()Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1900(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    goto/16 :goto_0

    .line 569
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 570
    .local v22, "values":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const-string v14, "UpdateAttributesText"

    .line 572
    .local v14, "msgVal":Ljava/lang/String;
    :goto_3
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_6

    .line 573
    const-string v23, ""

    aput-object v23, v22, v9

    .line 572
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 570
    .end local v9    # "i":I
    .end local v14    # "msgVal":Ljava/lang/String;
    :cond_5
    const-string v14, "UpdateValuesText"

    goto :goto_3

    .line 575
    .restart local v9    # "i":I
    .restart local v14    # "msgVal":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v22

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->sendSettingsTextRspNative(I[BI[Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1200(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 579
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v22

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->sendValueTextRspNative(I[BI[Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1300(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 588
    .end local v9    # "i":I
    .end local v14    # "msgVal":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/Integer;
    .end local v22    # "values":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updatePlayPauseState(IJ)V
    invoke-static/range {v24 .. v27}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2100(Lcom/android/bluetooth/a2dp/Avrcp;IJ)V

    goto/16 :goto_0

    .line 594
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Bundle;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateMetadata(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2200(Lcom/android/bluetooth/a2dp/Avrcp;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 598
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateAvailableMediaPlayers()V
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2300(Lcom/android/bluetooth/a2dp/Avrcp;)V

    goto/16 :goto_0

    .line 602
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateAddressedMediaPlayer(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2400(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto/16 :goto_0

    .line 606
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateTransportControls(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2500(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto/16 :goto_0

    .line 610
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 615
    :sswitch_7
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "New genId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", clearing = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mClientGeneration:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2002(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 620
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 621
    .local v5, "address":Ljava/lang/String;
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_GET_RC_FEATURES: address="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", features="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mFeatures:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2602(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2700(Lcom/android/bluetooth/a2dp/Avrcp;)Landroid/media/AudioManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->isAbsoluteVolumeSupported()Z

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 628
    .end local v5    # "address":Ljava/lang/String;
    :sswitch_9
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_GET_PLAY_STATUS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mCurrentPlayState:I
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v25

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->convertPlayStateToPlayStatus(I)I
    invoke-static/range {v24 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$2900(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSongLengthMs:J
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3000(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v26, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J
    invoke-static/range {v26 .. v26}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3100(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayStatusRspNative(III)Z
    invoke-static/range {v23 .. v26}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3200(Lcom/android/bluetooth/a2dp/Avrcp;III)Z

    goto/16 :goto_0

    .line 637
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v15, v0

    .line 638
    .local v15, "numAttr":B
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 639
    .local v7, "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_GET_ELEM_ATTRS:numAttr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-array v6, v15, [I

    .line 641
    .local v6, "attrIds":[I
    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 642
    .local v20, "textArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    if-ge v9, v15, :cond_8

    .line 643
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v6, v9

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    aget v24, v6, v9

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getAttributeString(I)Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3300(Lcom/android/bluetooth/a2dp/Avrcp;I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v20, v9

    .line 642
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 646
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getElementAttrRspNative(B[I[Ljava/lang/String;)Z
    invoke-static {v0, v15, v6, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3400(Lcom/android/bluetooth/a2dp/Avrcp;B[I[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 650
    .end local v6    # "attrIds":[I
    .end local v7    # "attrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "i":I
    .end local v15    # "numAttr":B
    .end local v20    # "textArray":[Ljava/lang/String;
    :sswitch_b
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_REGISTER_NOTIFICATION:event="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " param="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->processRegisterNotification(II)V
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3500(Lcom/android/bluetooth/a2dp/Avrcp;II)V

    goto/16 :goto_0

    .line 656
    :sswitch_c
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_PLAY_INTERVAL_TIMEOUT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3602(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayPosChangedNT:I
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3600(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayPosition()J
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3100(Lcom/android/bluetooth/a2dp/Avrcp;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->registerNotificationRspPlayPosNative(II)Z
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3700(Lcom/android/bluetooth/a2dp/Avrcp;II)Z

    goto/16 :goto_0

    .line 662
    :sswitch_d
    const-string v23, "Avrcp"

    const-string v24, "setAddressedPlayer fails, Times out"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x13

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setAdressedPlayerRspNative(B)Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3800(Lcom/android/bluetooth/a2dp/Avrcp;B)Z

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mRequestedAddressedPlayerPackageName:Ljava/lang/String;
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$3902(Lcom/android/bluetooth/a2dp/Avrcp;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 668
    :sswitch_e
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_VOLUME_CHANGED: volume="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ctype="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 672
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4000(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v23

    if-nez v23, :cond_a

    .line 673
    const-string v23, "Avrcp"

    const-string v24, "Unsolicited response, ignored"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 676
    :cond_a
    const/16 v23, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4102(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 680
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4200(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0xd

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 683
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->notifyVolumeChanged(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4300(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4202(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 685
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 686
    const-string v23, "Avrcp"

    const-string v24, "setAbsoluteVolume call rejected"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 691
    :sswitch_f
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_ADJUST_VOLUME: direction="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4000(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 693
    const-string v23, "Avrcp"

    const-string v24, "There is already a volume command in progress."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 697
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4200(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 698
    :cond_f
    const/16 v23, 0x7f

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsoluteVolume:I
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4200(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v27, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolumeStep:I
    invoke-static/range {v27 .. v27}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4400(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 700
    .local v18, "setVol":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4500(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 701
    const/16 v23, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastDirection:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4602(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4702(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 708
    .end local v18    # "setVol":I
    :cond_10
    const-string v23, "Avrcp"

    const-string v24, "Unknown direction in MESSAGE_ADJUST_VOLUME"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 713
    :sswitch_10
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_SET_ABSOLUTE_VOLUME"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4000(Lcom/android/bluetooth/a2dp/Avrcp;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 715
    const-string v23, "Avrcp"

    const-string v24, "There is already a volume command in progress."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 718
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4500(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 719
    const/16 v23, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4702(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 726
    :sswitch_11
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_ABS_VOL_TIMEOUT: Volume change cmd timed out."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4100(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_12

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4102(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    goto/16 :goto_0

    .line 731
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # += operator for: Lcom/android/bluetooth/a2dp/Avrcp;->mAbsVolRetryTimes:I
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4112(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mLastSetVolume:I
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4700(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v24

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->setVolumeNative(I)Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4500(Lcom/android/bluetooth/a2dp/Avrcp;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 733
    const/16 v23, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mVolCmdInProgress:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4002(Lcom/android/bluetooth/a2dp/Avrcp;Z)Z

    goto/16 :goto_0

    .line 743
    :sswitch_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    const/16 v24, 0xa

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    .line 744
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_FAST_FORWARD"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/16 v19, 0x7d0

    .line 751
    .local v19, "skipAmount":I
    :goto_6
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 753
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "missing release button event:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_13
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v23

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_15

    .line 758
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipStartTime:J
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4902(Lcom/android/bluetooth/a2dp/Avrcp;J)J

    .line 761
    :cond_15
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 762
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4802(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v25

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5100(Lcom/android/bluetooth/a2dp/Avrcp;J)V

    .line 765
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 766
    .local v16, "posMsg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 767
    const-wide/16 v23, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 747
    .end local v16    # "posMsg":Landroid/os/Message;
    .end local v19    # "skipAmount":I
    :cond_16
    const-string v23, "Avrcp"

    const-string v24, "MESSAGE_REWIND"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/16 v19, -0x7d0

    .restart local v19    # "skipAmount":I
    goto/16 :goto_6

    .line 772
    .end local v19    # "skipAmount":I
    :sswitch_13
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_CHANGE_PLAY_POS:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v24, v0

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mSkipAmount:I
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$4800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v25, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getSkipMultiplier()I
    invoke-static/range {v25 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5000(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v25

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->changePositionBy(J)V
    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5100(Lcom/android/bluetooth/a2dp/Avrcp;J)V

    .line 774
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x190

    move/from16 v23, v0

    const/16 v24, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 775
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 776
    .restart local v16    # "posMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 777
    const-wide/16 v23, 0x190

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 781
    .end local v16    # "posMsg":Landroid/os/Message;
    :sswitch_14
    const-string v23, "Avrcp"

    const-string v24, "MSG_UPDATE_RCC_CHANGE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 783
    .local v8, "callingPackageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 784
    .local v11, "isFocussed":I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 785
    .local v10, "isAvailable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->processRCCStateChange(Ljava/lang/String;II)V
    invoke-static {v0, v8, v11, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5200(Lcom/android/bluetooth/a2dp/Avrcp;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 789
    .end local v8    # "callingPackageName":Ljava/lang/String;
    .end local v10    # "isAvailable":I
    .end local v11    # "isFocussed":I
    :sswitch_15
    const-string v23, "Avrcp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "MESSAGE_SET_A2DP_AUDIO_STATE:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateA2dpAudioState(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/a2dp/Avrcp;->access$5300(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto/16 :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x4 -> :sswitch_b
        0x5 -> :sswitch_c
        0x6 -> :sswitch_e
        0x7 -> :sswitch_f
        0x8 -> :sswitch_10
        0x9 -> :sswitch_11
        0xa -> :sswitch_12
        0xb -> :sswitch_12
        0xc -> :sswitch_13
        0xd -> :sswitch_15
        0xe -> :sswitch_d
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_14
        0x25a -> :sswitch_0
    .end sparse-switch

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
