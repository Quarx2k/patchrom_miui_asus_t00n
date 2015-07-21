.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothOppNotification"

.field private static final V:Z = false

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field private static final WHERE_RUNNING_INBOUND:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\') AND (direction == 1)"

.field private static final WHERE_RUNNING_OUTBOUND:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\') AND (direction == 0)"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field static final not_through_handover:Ljava/lang/String; = "(confirm != \'5\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInboundActiveNotificationId:I

.field private mInboundUpdateCompleteNotification:Z

.field private mIncomingShownId:I

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOutboundActiveNotificationId:I

.field private mOutboundUpdateCompleteNotification:Z

.field private mPendingUpdate:I

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 110
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    .line 113
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundActiveNotificationId:I

    .line 114
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundActiveNotificationId:I

    .line 115
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mIncomingShownId:I

    .line 189
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;
    .param p1, "x1"    # Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method private cancelIncomingFileConfirmNotification()V
    .locals 9

    .prologue
    .line 631
    const/4 v6, 0x0

    .line 633
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 647
    :goto_0
    if-nez v6, :cond_1

    .line 660
    :goto_1
    return-void

    .line 635
    :catch_0
    move-exception v7

    .line 636
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_0

    .line 637
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_0
    const/4 v6, 0x0

    .line 640
    const-string v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelupdateIncomingFileConfirmNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v7

    .line 642
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v6, 0x0

    .line 643
    const-string v0, "BluetoothOppNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelupdateIncomingFileConfirmNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 655
    .local v8, "id":I
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 651
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 657
    .end local v8    # "id":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 659
    const/4 v6, 0x0

    .line 660
    goto :goto_1
.end method

.method private updateActiveNotification()V
    .locals 41

    .prologue
    .line 237
    const/16 v28, 0x0

    .local v28, "inboundRunning":I
    const/16 v31, 0x0

    .line 238
    .local v31, "outboundRunning":I
    const/16 v16, 0x0

    .line 241
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\') AND (direction == 1)"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 243
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 244
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 245
    const/16 v16, 0x0

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\') AND (direction == 0)"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 248
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 249
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 250
    const/16 v16, 0x0

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 265
    :goto_0
    if-nez v16, :cond_2

    .line 408
    :cond_0
    return-void

    .line 253
    :catch_0
    move-exception v22

    .line 254
    .local v22, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v16, :cond_1

    .line 255
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    const/16 v16, 0x0

    .line 258
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateActiveNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .end local v22    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v22

    .line 260
    .local v22, "e":Landroid/database/CursorWindowAllocationException;
    const/16 v16, 0x0

    .line 261
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateActiveNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v22    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_2
    if-lez v28, :cond_5

    .line 273
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    .line 277
    :goto_1
    if-lez v31, :cond_6

    .line 278
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    .line 286
    :goto_2
    const-string v3, "timestamp"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 287
    .local v35, "timestampIndex":I
    const-string v3, "direction"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 288
    .local v21, "directionIndex":I
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 289
    .local v27, "idIndex":I
    const-string v3, "total_bytes"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    .line 290
    .local v38, "totalBytesIndex":I
    const-string v3, "current_bytes"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 291
    .local v15, "currentBytesIndex":I
    const-string v3, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 292
    .local v17, "dataIndex":I
    const-string v3, "hint"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 293
    .local v24, "filenameHintIndex":I
    const-string v3, "confirm"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 294
    .local v11, "confirmIndex":I
    const-string v3, "destination"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 296
    .local v19, "destinationIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 297
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b

    .line 298
    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 299
    .local v33, "timeStamp":J
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 300
    .local v20, "dir":I
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 301
    .local v26, "id":I
    move-object/from16 v0, v16

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 302
    .local v36, "total":J
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 303
    .local v13, "current":J
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 305
    .local v12, "confirmation":I
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 306
    .local v18, "destination":Ljava/lang/String;
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 307
    .local v23, "fileName":Ljava/lang/String;
    if-nez v23, :cond_3

    .line 308
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 310
    :cond_3
    if-nez v23, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 314
    :cond_4
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "batchID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 297
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 275
    .end local v10    # "batchID":Ljava/lang/String;
    .end local v11    # "confirmIndex":I
    .end local v12    # "confirmation":I
    .end local v13    # "current":J
    .end local v15    # "currentBytesIndex":I
    .end local v17    # "dataIndex":I
    .end local v18    # "destination":Ljava/lang/String;
    .end local v19    # "destinationIndex":I
    .end local v20    # "dir":I
    .end local v21    # "directionIndex":I
    .end local v23    # "fileName":Ljava/lang/String;
    .end local v24    # "filenameHintIndex":I
    .end local v26    # "id":I
    .end local v27    # "idIndex":I
    .end local v33    # "timeStamp":J
    .end local v35    # "timestampIndex":I
    .end local v36    # "total":J
    .end local v38    # "totalBytesIndex":I
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    goto/16 :goto_1

    .line 280
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    goto/16 :goto_2

    .line 321
    .restart local v10    # "batchID":Ljava/lang/String;
    .restart local v11    # "confirmIndex":I
    .restart local v12    # "confirmation":I
    .restart local v13    # "current":J
    .restart local v15    # "currentBytesIndex":I
    .restart local v17    # "dataIndex":I
    .restart local v18    # "destination":Ljava/lang/String;
    .restart local v19    # "destinationIndex":I
    .restart local v20    # "dir":I
    .restart local v21    # "directionIndex":I
    .restart local v23    # "fileName":Ljava/lang/String;
    .restart local v24    # "filenameHintIndex":I
    .restart local v26    # "id":I
    .restart local v27    # "idIndex":I
    .restart local v33    # "timeStamp":J
    .restart local v35    # "timestampIndex":I
    .restart local v36    # "total":J
    .restart local v38    # "totalBytesIndex":I
    :cond_7
    new-instance v30, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct/range {v30 .. v30}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 322
    .local v30, "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-wide/from16 v0, v33

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 323
    move/from16 v0, v26

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 324
    move/from16 v0, v20

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 325
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_9

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040029

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 333
    :cond_8
    :goto_5
    move-object/from16 v0, v30

    iput-wide v13, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 334
    move-wide/from16 v0, v36

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 335
    const/4 v3, 0x5

    if-ne v12, v3, :cond_a

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 337
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 327
    :cond_9
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040026

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v23, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_5

    .line 335
    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    .line 344
    .end local v10    # "batchID":Ljava/lang/String;
    .end local v12    # "confirmation":I
    .end local v13    # "current":J
    .end local v18    # "destination":Ljava/lang/String;
    .end local v20    # "dir":I
    .end local v23    # "fileName":Ljava/lang/String;
    .end local v26    # "id":I
    .end local v30    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v33    # "timeStamp":J
    .end local v36    # "total":J
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 346
    const/16 v16, 0x0

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 350
    .restart local v30    # "item":Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    if-eqz v3, :cond_e

    .line 351
    const/16 v32, 0x0

    .line 352
    .local v32, "progress":F
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 353
    const/high16 v32, -0x40800000    # -1.0f

    .line 359
    :goto_8
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 361
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 367
    :goto_9
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 369
    const-string v3, "android.btopp.intent.extra.BT_OPP_ADDRESS"

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v4, "com.android.permission.HANDOVER_STATUS"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_7

    .line 355
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    long-to-float v3, v3

    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    long-to-float v4, v4

    div-float v32, v3, v4

    goto :goto_8

    .line 364
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v3, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 375
    .end local v29    # "intent":Landroid/content/Intent;
    .end local v32    # "progress":F
    :cond_e
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    .local v9, "b":Landroid/app/Notification$Builder;
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 379
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_11

    .line 383
    const/16 v4, 0x64

    move-object/from16 v0, v30

    iget-wide v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    move-object/from16 v0, v30

    iget-wide v7, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v39, -0x1

    cmp-long v3, v6, v39

    if-nez v3, :cond_10

    const/4 v3, 0x1

    :goto_a
    invoke-virtual {v9, v4, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 388
    :goto_b
    move-object/from16 v0, v30

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v9, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 389
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_13

    .line 390
    const v3, 0x1080088

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 391
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundActiveNotificationId:I

    .line 398
    :cond_f
    :goto_c
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 400
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.LIST"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v29    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v29

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_7

    .line 383
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_10
    const/4 v3, 0x0

    goto :goto_a

    .line 386
    :cond_11
    const/16 v4, 0x64

    const/16 v5, 0x64

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v39, -0x1

    cmp-long v3, v6, v39

    if-nez v3, :cond_12

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v9, v4, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_b

    :cond_12
    const/4 v3, 0x0

    goto :goto_d

    .line 392
    :cond_13
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 393
    const v3, 0x1080081

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 394
    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundActiveNotificationId:I

    goto/16 :goto_c
.end method

.method private updateCompletedNotification()V
    .locals 27

    .prologue
    .line 413
    const-wide/16 v23, 0x0

    .line 414
    .local v23, "timeStamp":J
    const/16 v20, 0x0

    .line 415
    .local v20, "outboundSuccNumber":I
    const/16 v18, 0x0

    .line 418
    .local v18, "outboundFailNumber":I
    const/4 v15, 0x0

    .line 419
    .local v15, "inboundSuccNumber":I
    const/4 v13, 0x0

    .line 424
    .local v13, "inboundFailNumber":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    if-nez v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundActiveNotificationId:I

    if-eqz v3, :cond_2

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundActiveNotificationId:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundActiveNotificationId:I

    if-eqz v3, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundActiveNotificationId:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 443
    :cond_3
    const/4 v10, 0x0

    .line 445
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 459
    :goto_1
    if-eqz v10, :cond_0

    .line 463
    const-string v3, "timestamp"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 464
    .local v25, "timestampIndex":I
    const-string v3, "status"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 466
    .local v22, "statusIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7

    .line 467
    invoke-interface {v10}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 471
    :cond_4
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 473
    .local v21, "status":I
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    add-int/lit8 v18, v18, 0x1

    .line 466
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 447
    .end local v21    # "status":I
    .end local v22    # "statusIndex":I
    .end local v25    # "timestampIndex":I
    :catch_0
    move-exception v11

    .line 448
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_5

    .line 449
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_5
    const/4 v10, 0x0

    .line 452
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCompletedNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v11

    .line 454
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v10, 0x0

    .line 455
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCompletedNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 476
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v21    # "status":I
    .restart local v22    # "statusIndex":I
    .restart local v25    # "timestampIndex":I
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 480
    .end local v21    # "status":I
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 482
    const/4 v10, 0x0

    .line 484
    add-int v19, v20, v18

    .line 486
    .local v19, "outboundNum":I
    if-lez v19, :cond_a

    .line 487
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    .line 488
    .local v17, "outNoti":Landroid/app/Notification;
    const v3, 0x1080089

    move-object/from16 v0, v17

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 490
    .local v26, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040068

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "caption":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN_OUTBOUND"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v16, "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1, v9, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 496
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    const-string v3, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 499
    move-wide/from16 v0, v23

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4245

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 510
    .end local v9    # "caption":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "outNoti":Landroid/app/Notification;
    .end local v26    # "title":Ljava/lang/String;
    :cond_8
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    .line 523
    :goto_5
    if-eqz v10, :cond_0

    .line 527
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_d

    .line 528
    invoke-interface {v10}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 530
    move/from16 v0, v25

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 532
    :cond_9
    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 534
    .restart local v21    # "status":I
    invoke-static/range {v21 .. v21}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 535
    add-int/lit8 v13, v13, 0x1

    .line 527
    :goto_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    .line 502
    .end local v21    # "status":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_8

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4245

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    .line 512
    :catch_2
    move-exception v11

    .line 513
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v10, :cond_b

    .line 514
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_b
    const/4 v10, 0x0

    .line 517
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCompletedNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 518
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v11

    .line 519
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v10, 0x0

    .line 520
    const-string v3, "BluetoothOppNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCompletedNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 537
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    .restart local v21    # "status":I
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 541
    .end local v21    # "status":I
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 543
    const/4 v10, 0x0

    .line 545
    add-int v14, v15, v13

    .line 547
    .local v14, "inboundNum":I
    if-lez v14, :cond_e

    .line 548
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    .line 549
    .local v12, "inNoti":Landroid/app/Notification;
    const v3, 0x1080082

    iput v3, v12, Landroid/app/Notification;->icon:I

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 551
    .restart local v26    # "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040068

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 553
    .restart local v9    # "caption":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN_INBOUND"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v12, v3, v0, v9, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 557
    new-instance v16, Landroid/content/Intent;

    .end local v16    # "intent":Landroid/content/Intent;
    const-string v3, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 560
    move-wide/from16 v0, v23

    iput-wide v0, v12, Landroid/app/Notification;->when:J

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4246

    invoke-virtual {v3, v4, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 563
    .end local v9    # "caption":Ljava/lang/String;
    .end local v12    # "inNoti":Landroid/app/Notification;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v26    # "title":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4246

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 17

    .prologue
    .line 571
    const/4 v9, 0x0

    .line 573
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 587
    :goto_0
    if-nez v9, :cond_1

    .line 628
    :goto_1
    return-void

    .line 575
    :catch_0
    move-exception v10

    .line 576
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v9, :cond_0

    .line 577
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 579
    :cond_0
    const/4 v9, 0x0

    .line 580
    const-string v1, "BluetoothOppNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIncomingFileConfirmNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v10

    .line 582
    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    const/4 v9, 0x0

    .line 583
    const-string v1, "BluetoothOppNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIncomingFileConfirmNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    .end local v10    # "e":Landroid/database/CursorWindowAllocationException;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f040023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 594
    .local v16, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v2, 0x7f040024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 596
    .local v7, "caption":Ljava/lang/CharSequence;
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 597
    .local v11, "id":I
    const-string v1, "timestamp"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 598
    .local v14, "timeStamp":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 600
    .local v8, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mIncomingShownId:I

    if-eq v1, v11, :cond_2

    .line 601
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 602
    .local v13, "n":Landroid/app/Notification;
    const/high16 v1, 0x7f020000

    iput v1, v13, Landroid/app/Notification;->icon:I

    .line 603
    iget v1, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v13, Landroid/app/Notification;->flags:I

    .line 604
    iget v1, v13, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v13, Landroid/app/Notification;->flags:I

    .line 605
    const/4 v1, 0x1

    iput v1, v13, Landroid/app/Notification;->defaults:I

    .line 606
    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 608
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.CONFIRM"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v12, "intent":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 612
    iput-wide v14, v13, Landroid/app/Notification;->when:J

    .line 613
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v12, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0, v7, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 616
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "intent":Landroid/content/Intent;
    const-string v1, "android.btopp.intent.action.HIDE"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .restart local v12    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {v12, v8}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v12, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 621
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v11, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 622
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mIncomingShownId:I

    .line 591
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "n":Landroid/app/Notification;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 625
    .end local v7    # "caption":Ljava/lang/CharSequence;
    .end local v8    # "contentUri":Landroid/net/Uri;
    .end local v11    # "id":I
    .end local v14    # "timeStamp":J
    .end local v16    # "title":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 627
    const/4 v9, 0x0

    .line 628
    goto/16 :goto_1
.end method


# virtual methods
.method public updateNotification()V
    .locals 3

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 157
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 159
    monitor-exit p0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNotifier()V
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundUpdateCompleteNotification:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundUpdateCompleteNotification:Z

    .line 174
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 176
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->cancelIncomingFileConfirmNotification()V

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
