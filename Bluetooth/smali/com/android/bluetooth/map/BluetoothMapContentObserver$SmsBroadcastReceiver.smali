.class Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private final ID_PROJECTION:[Ljava/lang/String;

.field private final UPDATE_STATUS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 3

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1085
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    .line 1086
    const-string v0, "content://sms/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    return-void
.end method

.method private actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .prologue
    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 1188
    .local v15, "messageUri":Landroid/net/Uri;
    const-string v2, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 1189
    .local v16, "pdu":[B
    const-string v2, "format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1191
    .local v11, "format":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v13

    .line 1192
    .local v13, "message":Landroid/telephony/SmsMessage;
    if-nez v13, :cond_0

    .line 1193
    const-string v2, "BluetoothMapContentObserver"

    const-string v3, "actionMessageDelivery: Can\'t get message from pdu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :goto_0
    return-void

    .line 1196
    :cond_0
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v17

    .line 1198
    .local v17, "status":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1201
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1204
    .local v14, "messageId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->UPDATE_STATUS_URI:Landroid/net/Uri;

    int-to-long v3, v14

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1205
    .local v18, "updateUri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v12

    .line 1207
    .local v12, "isStatusReport":Z
    const-string v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionMessageDelivery: uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isStatusReport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v9, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v9, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1212
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const-string v2, "date_sent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v12    # "isStatusReport":Z
    .end local v14    # "messageId":I
    .end local v18    # "updateUri":Landroid/net/Uri;
    :goto_1
    if-eqz v10, :cond_1

    .line 1220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_1
    if-nez v17, :cond_4

    .line 1224
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string v3, "DeliverySuccess"

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1226
    .local v1, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1233
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1216
    .end local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_2
    :try_start_1
    const-string v2, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find message for status update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1219
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 1220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 1228
    :cond_4
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string v3, "DeliveryFailure"

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1230
    .restart local v1    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_2
.end method

.method private actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .prologue
    const/4 v11, 0x5

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1135
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->getResultCode()I

    move-result v9

    .line 1136
    .local v9, "result":I
    const/4 v8, 0x0

    .line 1138
    .local v8, "delete":Z
    const/4 v1, -0x1

    if-ne v9, v1, :cond_3

    .line 1139
    const-string v1, "BluetoothMapContentObserver"

    const-string v2, "actionMessageSent: result OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v1, :cond_2

    .line 1141
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v1, v7, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to SENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string v2, "SendingSuccess"

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1151
    .local v0, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 1176
    :goto_1
    if-ne v8, v10, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1183
    :cond_1
    return-void

    .line 1146
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 1154
    :cond_3
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->retry:I

    if-ne v1, v10, :cond_4

    .line 1156
    iput-boolean v10, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    .line 1157
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string v2, "SendingFailure"

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aget-object v5, v5, v7

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1159
    .restart local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 1161
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->transparent:I

    if-nez v1, :cond_6

    .line 1162
    iget-object v1, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-static {p1, v1, v11, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1164
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_5
    :goto_2
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    const-string v2, "SendingFailure"

    iget-wide v3, p3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v11

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1172
    .restart local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_1

    .line 1167
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_6
    const/4 v8, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "action":Ljava/lang/String;
    const-string v4, "HANDLE"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1109
    .local v1, "handle":J
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 1111
    .local v3, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-nez v3, :cond_1

    .line 1114
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: no msgInfo found for handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    const-string v4, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1119
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    .line 1120
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsSent:I

    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne v4, v5, :cond_0

    .line 1121
    invoke-direct {p0, p1, p2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageSent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    goto :goto_0

    .line 1123
    :cond_2
    const-string v4, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1124
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    .line 1125
    iget v4, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->partsDelivered:I

    iget v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ne v4, v5, :cond_0

    .line 1126
    invoke-direct {p0, p1, p2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->actionMessageDelivery(Landroid/content/Context;Landroid/content/Intent;Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;)V

    goto :goto_0

    .line 1129
    :cond_3
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: Unknown action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 1089
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1091
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1092
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1093
    const-string v2, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1094
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1095
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    goto :goto_0
.end method
