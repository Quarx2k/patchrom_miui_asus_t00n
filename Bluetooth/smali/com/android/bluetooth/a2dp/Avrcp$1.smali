.class Lcom/android/bluetooth/a2dp/Avrcp$1;
.super Landroid/content/BroadcastReceiver;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/Avrcp;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "action":Ljava/lang/String;
    const-string v12, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 300
    const-string v12, "Avrcp"

    const-string v13, "received RCC_CHANGED_ACTION"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v8, 0x0

    .line 302
    .local v8, "isRCCFocussed":I
    const/4 v7, 0x0

    .line 303
    .local v7, "isRCCAvailable":I
    const-string v12, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "callingPackageName":Ljava/lang/String;
    const-string v12, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 305
    .local v6, "isFocussed":Z
    const-string v12, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 306
    .local v5, "isAvailable":Z
    if-eqz v6, :cond_0

    .line 307
    const/4 v8, 0x1

    .line 308
    :cond_0
    if-eqz v5, :cond_1

    .line 309
    const/4 v7, 0x1

    .line 310
    :cond_1
    const-string v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "focus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , availability: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$300(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$300(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    move-result-object v12

    const/16 v13, 0xcb

    invoke-virtual {v12, v13, v8, v7, v2}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 370
    .end local v2    # "callingPackageName":Ljava/lang/String;
    .end local v5    # "isAvailable":Z
    .end local v6    # "isFocussed":Z
    .end local v7    # "isRCCAvailable":I
    .end local v8    # "isRCCFocussed":I
    :cond_2
    :goto_0
    return-void

    .line 314
    :cond_3
    const-string v12, "org.codeaurora.music.playersettingsresponse"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 315
    const-string v12, "Response"

    const/16 v13, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 319
    .local v4, "getResponse":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v13

    monitor-enter v13

    .line 320
    :try_start_0
    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 321
    .local v11, "val":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mHandler:Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$300(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;

    move-result-object v12

    const/16 v14, 0x25a

    invoke-virtual {v12, v14}, Lcom/android/bluetooth/a2dp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPendingCmds:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$400(Lcom/android/bluetooth/a2dp/Avrcp;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    :cond_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    const-string v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getResponse"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    const-string v12, "Attributes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 330
    .local v3, "data":[B
    array-length v12, v3

    int-to-byte v9, v12

    .line 331
    .local v9, "numAttr":B
    const-string v12, "Avrcp"

    const-string v13, "GET_ATTRIBUTE_IDS"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getListPlayerappAttrRspNative(B[B)Z
    invoke-static {v12, v9, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->access$500(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto :goto_0

    .line 325
    .end local v3    # "data":[B
    .end local v9    # "numAttr":B
    .end local v11    # "val":Ljava/lang/Integer;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 335
    .restart local v11    # "val":Ljava/lang/Integer;
    :pswitch_1
    const-string v12, "Values"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 336
    .restart local v3    # "data":[B
    array-length v12, v3

    int-to-byte v9, v12

    .line 337
    .restart local v9    # "numAttr":B
    const-string v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GET_VALUE_IDS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->getPlayerAppValueRspNative(B[B)Z
    invoke-static {v12, v9, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->access$600(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 342
    .end local v3    # "data":[B
    .end local v9    # "numAttr":B
    :pswitch_2
    const-string v12, "AttribValuePairs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 343
    .restart local v3    # "data":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->updateLocalPlayerSettings([B)V
    invoke-static {v12, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->access$700(Lcom/android/bluetooth/a2dp/Avrcp;[B)V

    .line 344
    array-length v12, v3

    int-to-byte v9, v12

    .line 345
    .restart local v9    # "numAttr":B
    const-string v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GET_ATTRIBUTE_VALUES"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I
    invoke-static {v12}, Lcom/android/bluetooth/a2dp/Avrcp;->access$800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x5

    if-ne v4, v12, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    const/4 v13, 0x1

    # setter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I
    invoke-static {v12, v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$802(Lcom/android/bluetooth/a2dp/Avrcp;I)I

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerStatusChangeNT:I
    invoke-static {v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$800(Lcom/android/bluetooth/a2dp/Avrcp;)I

    move-result v13

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->sendPlayerAppChangedRsp(I)V
    invoke-static {v12, v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$900(Lcom/android/bluetooth/a2dp/Avrcp;I)V

    goto/16 :goto_0

    .line 352
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->SendCurrentPlayerValueRspNative(B[B)Z
    invoke-static {v12, v9, v3}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1000(Lcom/android/bluetooth/a2dp/Avrcp;B[B)Z

    goto/16 :goto_0

    .line 356
    .end local v3    # "data":[B
    .end local v9    # "numAttr":B
    :pswitch_3
    const-string v12, "AttributeStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 357
    .local v10, "text":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static {v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v13

    iget-object v13, v13, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static {v14}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v14

    iget-object v14, v14, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v15, v10

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->sendSettingsTextRspNative(I[BI[Ljava/lang/String;)Z
    invoke-static {v12, v13, v14, v15, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1200(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z

    .line 359
    const-string v12, "Avrcp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPlayerSettings.attrIds"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static {v14}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v14

    iget-object v14, v14, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    .end local v10    # "text":[Ljava/lang/String;
    :pswitch_4
    const-string v12, "ValueStrings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 364
    .restart local v10    # "text":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static {v13}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v13

    iget-object v13, v13, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/a2dp/Avrcp$1;->this$0:Lcom/android/bluetooth/a2dp/Avrcp;

    # getter for: Lcom/android/bluetooth/a2dp/Avrcp;->mPlayerSettings:Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;
    invoke-static {v14}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1100(Lcom/android/bluetooth/a2dp/Avrcp;)Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;

    move-result-object v14

    iget-object v14, v14, Lcom/android/bluetooth/a2dp/Avrcp$PlayerSettings;->attrIds:[B

    array-length v15, v10

    # invokes: Lcom/android/bluetooth/a2dp/Avrcp;->sendValueTextRspNative(I[BI[Ljava/lang/String;)Z
    invoke-static {v12, v13, v14, v15, v10}, Lcom/android/bluetooth/a2dp/Avrcp;->access$1300(Lcom/android/bluetooth/a2dp/Avrcp;I[BI[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
