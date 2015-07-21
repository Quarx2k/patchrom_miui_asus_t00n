.class public Lcom/android/bluetooth/opp/BluetoothOppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppReceiver.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppReceiver"

.field private static final V:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const/16 v2, 0xc

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 72
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v2, :cond_0

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 81
    new-instance v16, Landroid/content/Intent;

    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v16, "in1":Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v3, "com.android.bluetooth"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/high16 v2, 0x10000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v16    # "in1":Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 95
    :cond_2
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 99
    .local v9, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppService;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 102
    .end local v9    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    const-string v2, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v17

    .line 105
    .local v17, "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/bluetooth/BluetoothDevice;

    .line 110
    .local v19, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->startTransfer(Landroid/bluetooth/BluetoothDevice;)V

    .line 113
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "deviceName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v10

    .line 116
    .local v10, "batchSize":I
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v2, :cond_4

    .line 117
    const v2, 0x7f04004f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v12, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 122
    .local v22, "toastMsg":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    .end local v22    # "toastMsg":Ljava/lang/String;
    :cond_4
    const v2, 0x7f04004e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .restart local v22    # "toastMsg":Ljava/lang/String;
    goto :goto_1

    .line 123
    .end local v10    # "batchSize":I
    .end local v12    # "deviceName":Ljava/lang/String;
    .end local v17    # "mOppManager":Lcom/android/bluetooth/opp/BluetoothOppManager;
    .end local v19    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v22    # "toastMsg":Ljava/lang/String;
    :cond_5
    const-string v2, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 127
    .local v25, "uri":Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v15, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 134
    .local v18, "notMgr":Landroid/app/NotificationManager;
    if-eqz v18, :cond_1

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 138
    .end local v15    # "in":Landroid/content/Intent;
    .end local v18    # "notMgr":Landroid/app/NotificationManager;
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v2, "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    const v2, 0x7f040025

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 144
    :cond_7
    const-string v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.btopp.intent.action.LIST"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    :cond_8
    new-instance v23, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 154
    .local v23, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    .line 155
    .restart local v25    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v23

    .line 156
    if-nez v23, :cond_9

    .line 157
    const-string v2, "BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 161
    :cond_9
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 164
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 174
    :goto_2
    const-string v2, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 176
    .restart local v18    # "notMgr":Landroid/app/NotificationManager;
    if-eqz v18, :cond_1

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 168
    .end local v18    # "notMgr":Landroid/app/NotificationManager;
    :cond_a
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .restart local v15    # "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 180
    .end local v15    # "in":Landroid/content/Intent;
    .end local v23    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .end local v25    # "uri":Landroid/net/Uri;
    :cond_b
    const-string v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 183
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .restart local v15    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    const-string v2, "direction"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 187
    .end local v15    # "in":Landroid/content/Intent;
    :cond_c
    const-string v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 190
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v15    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 194
    .end local v15    # "in":Landroid/content/Intent;
    :cond_d
    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 197
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .restart local v15    # "in":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "android.btopp.intent.extra.SHOW_ALL"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 202
    .end local v15    # "in":Landroid/content/Intent;
    :cond_e
    const-string v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 204
    const/4 v11, 0x0

    .line 206
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 219
    :goto_3
    if-eqz v11, :cond_1

    .line 220
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 221
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 222
    .local v21, "statusColumn":I
    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 223
    .local v20, "status":I
    const-string v2, "visibility"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 224
    .local v30, "visibilityColumn":I
    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 225
    .local v29, "visibility":I
    const-string v2, "confirm"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 227
    .local v27, "userConfirmationColumn":I
    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 228
    .local v26, "userConfirmation":I
    if-nez v26, :cond_f

    if-nez v29, :cond_f

    .line 230
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v28, "values":Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    .end local v20    # "status":I
    .end local v21    # "statusColumn":I
    .end local v26    # "userConfirmation":I
    .end local v27    # "userConfirmationColumn":I
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "visibility":I
    .end local v30    # "visibilityColumn":I
    :cond_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v13

    .line 209
    .local v13, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v11, :cond_10

    .line 210
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_10
    const/4 v11, 0x0

    .line 213
    const-string v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 214
    .end local v13    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v13

    .line 215
    .local v13, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v11, 0x0

    .line 216
    const-string v2, "BluetoothOppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 240
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v13    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_11
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 242
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v24, "updateValues":Landroid/content/ContentValues;
    const-string v2, "visibility"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    .end local v24    # "updateValues":Landroid/content/ContentValues;
    :cond_12
    const-string v2, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    const/16 v22, 0x0

    .line 250
    .restart local v22    # "toastMsg":Ljava/lang/String;
    new-instance v23, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 251
    .restart local v23    # "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v23

    .line 252
    if-nez v23, :cond_13

    .line 253
    const-string v2, "BluetoothOppReceiver"

    const-string v3, "Error: Can not get data from db"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    :cond_13
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    if-eqz v2, :cond_16

    .line 259
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v14, "handoverIntent":Landroid/content/Intent;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 261
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    :goto_4
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v2, "android.btopp.intent.extra.BT_OPP_ADDRESS"

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 271
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_MIMETYPE"

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    :goto_5
    const-string v2, "com.android.permission.HANDOVER_STATUS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_14
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_4

    .line 278
    :cond_15
    const-string v2, "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 285
    .end local v14    # "handoverIntent":Landroid/content/Intent;
    :cond_16
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 286
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_19

    .line 287
    const v2, 0x7f04002a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 302
    :cond_17
    :goto_6
    sget-boolean v2, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    if-eqz v2, :cond_18

    .line 303
    const v2, 0x7f04000b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 304
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    .line 308
    :cond_18
    if-eqz v22, :cond_1

    .line 309
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 288
    :cond_19
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 289
    const v2, 0x7f040027

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    .line 293
    :cond_1a
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 294
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    if-nez v2, :cond_1b

    .line 295
    const v2, 0x7f04002c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    .line 297
    :cond_1b
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 298
    const v2, 0x7f040035

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_6
.end method
