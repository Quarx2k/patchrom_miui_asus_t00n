.class public Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.super Ljava/lang/Object;
.source "BluetoothMapContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$3;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;,
        Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    }
.end annotation


# static fields
.field private static final ACTION_MESSAGE_DELIVERY:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

.field private static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

.field private static final D:Z = true

.field public static final DELETED_THREAD_ID:I = -0x1

.field public static final MESSAGE_TYPE_RETRIEVE_CONF:I = 0x84

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentObserver"

.field private static final V:Z = true

.field private static final folderMms:[Ljava/lang/String;

.field private static final folderSms:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMasId:I

.field protected mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mMsgListMms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgListSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPushMsgList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

.field private mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field opList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    .line 99
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "m_id"

    aput-object v1, v0, v5

    const-string v1, "m_size"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "text_only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    .line 150
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "inbox"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    .line 1082
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Lcom/android/bluetooth/map/BluetoothMapContentObserver$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    .line 1294
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 116
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    .line 119
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->resendPendingMessages()V

    return-void
.end method

.method private deleteMessageMms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 543
    const/4 v8, 0x0

    .line 544
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 546
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 549
    .local v9, "threadId":I
    if-eq v9, v10, :cond_2

    .line 551
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    const/4 v8, 0x1

    .line 562
    .end local v9    # "threadId":I
    :cond_0
    if-eqz v6, :cond_1

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_1
    return v8

    .line 556
    .restart local v9    # "threadId":I
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 610
    const/4 v8, 0x0

    .line 611
    .local v8, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 612
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 614
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 617
    .local v9, "threadId":I
    if-eq v9, v10, :cond_2

    .line 619
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "thread_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 628
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    const/4 v8, 0x1

    .line 630
    .end local v9    # "threadId":I
    :cond_0
    if-eqz v6, :cond_1

    .line 631
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_1
    return v8

    .line 624
    .restart local v9    # "threadId":I
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private failPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1269
    const-string v3, "type = 4"

    .line 1270
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1273
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1276
    .local v7, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1277
    .local v9, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 1278
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_4

    .line 1283
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1285
    .end local v7    # "id":J
    .end local v9    # "msgBody":Ljava/lang/String;
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1286
    :cond_3
    return-void

    .line 1281
    .restart local v7    # "id":J
    .restart local v9    # "msgBody":Ljava/lang/String;
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    iget-object v1, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->uri:Landroid/net/Uri;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_0
.end method

.method private getFolderName([Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "folderTypeId"    # I

    .prologue
    .line 413
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 414
    aget-object v0, p1, p2

    .line 416
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private getSmsType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "smsType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 127
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 129
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private handleMsgListChanges()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesSms()V

    .line 539
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->handleMsgListChangesMms()V

    .line 540
    return-void
.end method

.method private handleMsgListChangesMms()V
    .locals 25

    .prologue
    .line 473
    const-string v4, "BluetoothMapContentObserver"

    const-string v5, "handleMsgListChangesMms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v21, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 480
    .local v18, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 481
    if-eqz v18, :cond_2

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    :cond_0
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 484
    .local v6, "id":J
    const-string v4, "msg_box"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 485
    .local v23, "type":I
    const-string v4, "m_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 487
    .local v22, "mtype":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 489
    .local v20, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v20, :cond_4

    .line 491
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_3

    const/16 v4, 0x84

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    .line 523
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 524
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 527
    .end local v6    # "id":J
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v22    # "mtype":I
    .end local v23    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 528
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v12, "MessageDeleted"

    move-object/from16 v0, v20

    iget-wide v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const-string v15, "deleted"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v16, v4, v5

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v10, v3

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 530
    .local v3, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 534
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v4

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 496
    .restart local v6    # "id":J
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v22    # "mtype":I
    .restart local v23    # "type":I
    :cond_3
    :try_start_1
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 497
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_1

    .line 500
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "NewMessage"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    aget-object v8, v4, v23

    const/4 v9, 0x0

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 502
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_0

    .line 506
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_4
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move/from16 v0, v23

    if-eq v0, v4, :cond_5

    .line 507
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getFolderName([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 508
    .local v8, "newFolder":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderMms:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getFolderName([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, "oldFolder":Ljava/lang/String;
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " old type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "MessageShift"

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 512
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 513
    move/from16 v0, v23

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 515
    const/4 v4, 0x2

    move/from16 v0, v23

    if-ne v0, v4, :cond_5

    .line 516
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    const-string v12, "SendingSuccess"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v15, v4, v23

    const/16 v16, 0x0

    sget-object v17, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v10, v3

    move-object/from16 v11, p0

    move-wide v13, v6

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 518
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 521
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v8    # "newFolder":Ljava/lang/String;
    .end local v9    # "oldFolder":Ljava/lang/String;
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 533
    .end local v6    # "id":J
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v22    # "mtype":I
    .end local v23    # "type":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 534
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    return-void
.end method

.method private handleMsgListChangesSms()V
    .locals 24

    .prologue
    .line 420
    const-string v4, "BluetoothMapContentObserver"

    const-string v5, "handleMsgListChangesSms"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 424
    .local v21, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 427
    .local v18, "c":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 428
    if-eqz v18, :cond_2

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    :cond_0
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 431
    .local v6, "id":J
    const-string v4, "type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 433
    .local v22, "type":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 435
    .local v20, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    if-nez v20, :cond_3

    .line 437
    new-instance v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 438
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 441
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "NewMessage"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    aget-object v8, v4, v22

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 443
    .local v3, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 458
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 459
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 462
    .end local v6    # "id":J
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v22    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    .line 463
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v12, "MessageDeleted"

    move-object/from16 v0, v20

    iget-wide v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->id:J

    const-string v15, "deleted"

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    aget-object v16, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v17, v0

    move-object v10, v3

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 465
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 469
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    :catchall_0
    move-exception v4

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 447
    .restart local v6    # "id":J
    .restart local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .restart local v22    # "type":I
    :cond_3
    :try_start_1
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_4

    .line 448
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getFolderName([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, "newFolder":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->folderSms:[Ljava/lang/String;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->getFolderName([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 450
    .local v9, "oldFolder":Ljava/lang/String;
    const-string v4, "BluetoothMapContentObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " old type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v5, "MessageShift"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 453
    .restart local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    .line 454
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;->type:I

    .line 456
    .end local v3    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v8    # "newFolder":Ljava/lang/String;
    .end local v9    # "oldFolder":Ljava/lang/String;
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 468
    .end local v6    # "id":J
    .end local v20    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v22    # "type":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 469
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    return-void
.end method

.method private initMsgList()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 370
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "initMsgList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 375
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v11, "msgListSms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 383
    .local v7, "id":J
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 385
    .local v12, "type":I
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    invoke-direct {v9, p0, v7, v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 386
    .local v9, "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 391
    .end local v7    # "id":J
    .end local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v12    # "type":I
    :cond_1
    iput-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListSms:Ljava/util/Map;

    .line 393
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v10, "msgListMms":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;>;"
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->MMS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    :cond_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 401
    .restart local v7    # "id":J
    const-string v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 403
    .restart local v12    # "type":I
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;

    invoke-direct {v9, p0, v7, v8, v12}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JI)V

    .line 404
    .restart local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    .end local v7    # "id":J
    .end local v9    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Msg;
    .end local v12    # "type":I
    :cond_3
    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMsgListMms:Ljava/util/Map;

    .line 410
    return-void
.end method

.method private moveDraftToOutbox(J)V
    .locals 8
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 855
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 857
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " _id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    .local v3, "whereClause":Ljava/lang/String;
    const-string v4, "content://mms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v4, v2

    move-object v5, v2

    .line 860
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 861
    .local v7, "queryResult":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 862
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 863
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 864
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 866
    .local v6, "data":Landroid/content/ContentValues;
    const-string v4, "msg_box"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    invoke-virtual {v0, v1, v6, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 868
    const-string v2, "BluetoothMapContentObserver"

    const-string v4, "moved draft MMS to outbox"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .end local v6    # "data":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 875
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v7    # "queryResult":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 872
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v7    # "queryResult":Landroid/database/Cursor;
    :cond_2
    const-string v2, "BluetoothMapContentObserver"

    const-string v4, "Could not move draft to outbox "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 16
    .param p1, "folder"    # I
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 885
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "msg_box"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v12, "read"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v12, "seen"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v12, "sub"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSubject()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v12, "sub_cs"

    const/16 v13, 0x6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 892
    const-string v12, "ct_t"

    const-string v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v12, "exp"

    const v13, 0x93a80

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    const-string v12, "m_cls"

    const-string v13, "personal"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v12, "m_type"

    const/16 v13, 0x80

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    const-string v12, "v"

    const/16 v13, 0x12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    const-string v12, "pri"

    const/16 v13, 0x81

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v12, "rr"

    const/16 v13, 0x81

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v12, "tr_id"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "T"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v12, "d_rpt"

    const/16 v13, 0x81

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v12, "locked"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getTextOnly()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 903
    const-string v12, "text_only"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 905
    :cond_0
    const-string v12, "m_size"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSize()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 909
    .local v9, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 910
    const-string v12, "thread_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v13, v9}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 911
    const-string v12, "content://mms"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 913
    .local v10, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 914
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 916
    if-nez v10, :cond_2

    .line 918
    const-string v12, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unabled to insert MMS "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-wide/16 v4, -0x1

    .line 1011
    :cond_1
    :goto_0
    return-wide v4

    .line 922
    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 923
    .local v4, "handle":J
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getMimeParts()Ljava/util/ArrayList;

    move-result-object v8

    .line 924
    .local v8, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;>;"
    if-eqz v8, :cond_8

    .line 925
    const-string v12, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " NEW URI "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 929
    .local v7, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    const/4 v1, 0x0

    .line 930
    .local v1, "count":I
    add-int/lit8 v1, v1, 0x1

    .line 931
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 932
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v12, :cond_b

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEXT"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 933
    const-string v12, "ct"

    const-string v13, "text/plain"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v12, "chset"

    const/16 v13, 0x6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 936
    const-string v12, "fn"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v12, "name"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_4
    :goto_2
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 944
    const-string v12, "cid"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_5
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v12, :cond_6

    .line 947
    const-string v12, "cl"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_6
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 949
    const-string v12, "cd"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_7
    const-string v12, "text"

    new-instance v13, Ljava/lang/String;

    iget-object v14, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/part"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 952
    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 953
    const-string v12, "BluetoothMapContentObserver"

    const-string v13, "Added TEXT part"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_3
    if-eqz v10, :cond_3

    .line 978
    const-string v12, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Added part with content-type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to Uri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 981
    .end local v1    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :catch_0
    move-exception v3

    .line 982
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v12, "BluetoothMapContentObserver"

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_8
    :goto_4
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 989
    const-string v12, "contact_id"

    const-string v13, "null"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v12, "address"

    const-string v13, "insert-address-token"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v12, "type"

    const/16 v13, 0x89

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    const-string v12, "charset"

    const/16 v13, 0x6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/addr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 995
    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 996
    if-eqz v10, :cond_9

    .line 997
    const-string v12, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " NEW URI "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_9
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1001
    const-string v12, "contact_id"

    const-string v13, "null"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v12, "address"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v12, "type"

    const/16 v13, 0x97

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string v12, "charset"

    const/16 v13, 0x6a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/addr"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1007
    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1008
    if-eqz v10, :cond_1

    .line 1009
    const-string v12, "BluetoothMapContentObserver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " NEW URI "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 938
    .restart local v1    # "count":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_a
    :try_start_1
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-nez v12, :cond_4

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-nez v12, :cond_4

    .line 940
    const-string v12, "fn"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "text_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v12, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "text_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 983
    .end local v1    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :catch_1
    move-exception v3

    .line 984
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "BluetoothMapContentObserver"

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 955
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "count":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_b
    :try_start_2
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v12, :cond_f

    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "SMIL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 957
    const-string v12, "seq"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v12, "ct"

    const-string v13, "application/smil"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 960
    const-string v12, "cid"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_c
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 962
    const-string v12, "cl"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_d
    iget-object v12, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 964
    const-string v12, "cd"

    iget-object v13, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_e
    const-string v12, "fn"

    const-string v13, "smil.xml"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v12, "name"

    const-string v13, "smil.xml"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v12, "text"

    new-instance v13, Ljava/lang/String;

    iget-object v14, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content://mms/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/part"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 970
    invoke-virtual {v2, v10, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 971
    const-string v12, "BluetoothMapContentObserver"

    const-string v13, "Added SMIL part"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 974
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;I)V

    .line 975
    const-string v12, "BluetoothMapContentObserver"

    const-string v13, "Added OTHER part"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private registerPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1239
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1240
    return-void
.end method

.method private removeDeletedMessages()V
    .locals 4

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "thread_id = -1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1292
    return-void
.end method

.method private resendPendingMessages()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1249
    const-string v3, "type = 4"

    .line 1250
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->SMS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1253
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1256
    .local v7, "id":J
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1257
    .local v9, "msgBody":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    .line 1258
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    if-eqz v10, :cond_1

    iget-boolean v0, v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->resend:Z

    if-nez v0, :cond_3

    .line 1262
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1265
    .end local v7    # "id":J
    .end local v9    # "msgBody":Ljava/lang/String;
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_2
    return-void

    .line 1261
    .restart local v7    # "id":J
    .restart local v9    # "msgBody":Ljava/lang/String;
    .restart local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    :cond_3
    invoke-virtual {p0, v10, v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unDeleteMessageMms(J)Z
    .locals 16
    .param p1, "handle"    # J

    .prologue
    .line 575
    const/4 v14, 0x0

    .line 576
    .local v14, "res":Z
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 577
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 579
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    const-string v2, "thread_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 581
    .local v15, "threadId":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_3

    .line 585
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 586
    .local v10, "id":J
    const-string v2, "msg_box"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 587
    .local v12, "msgBox":I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_2

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x89

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .line 594
    .local v8, "address":Ljava/lang/String;
    :goto_0
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v13, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, v13}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadIdMms(Landroid/net/Uri;J)V

    .line 601
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msgBox":I
    .end local v13    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    const/4 v14, 0x1

    .line 603
    .end local v15    # "threadId":I
    :cond_0
    if-eqz v9, :cond_1

    .line 604
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_1
    return v14

    .line 591
    .restart local v10    # "id":J
    .restart local v12    # "msgBox":I
    .restart local v15    # "threadId":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const/16 v4, 0x97

    invoke-static {v2, v10, v11, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "address":Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v8    # "address":Ljava/lang/String;
    .end local v10    # "id":J
    .end local v12    # "msgBox":I
    :cond_3
    const-string v2, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message not in deleted folder: handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threadId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private unDeleteMessageSms(J)Z
    .locals 11
    .param p1, "handle"    # J

    .prologue
    const/4 v2, 0x0

    .line 643
    const/4 v9, 0x0

    .line 644
    .local v9, "res":Z
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 645
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 647
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 649
    .local v10, "threadId":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_2

    .line 650
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "address":Ljava/lang/String;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 652
    .local v8, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 653
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->updateThreadIdSms(Landroid/net/Uri;J)V

    .line 658
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    const/4 v9, 0x1

    .line 660
    .end local v10    # "threadId":I
    :cond_0
    if-eqz v7, :cond_1

    .line 661
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_1
    return v9

    .line 655
    .restart local v10    # "threadId":I
    :cond_2
    const-string v0, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message not in deleted folder: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unRegisterPhoneServiceStateListener()V
    .locals 3

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1244
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1245
    return-void
.end method

.method private updateThreadIdMms(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 569
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private updateThreadIdSms(Landroid/net/Uri;J)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    const/4 v3, 0x0

    .line 637
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method private writeMmsDataPart(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;I)V
    .locals 7
    .param p1, "handle"    # J
    .param p3, "part"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1017
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1018
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1020
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    .line 1021
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 1023
    :cond_0
    const-string v4, "ct"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_1
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1026
    const-string v4, "cid"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1028
    const-string v4, "cl"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_3
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1030
    const-string v4, "cd"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_4
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1032
    const-string v4, "fn"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v4, "name"

    iget-object v5, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1040
    .local v1, "partUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1043
    .local v2, "res":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1044
    .local v0, "os":Ljava/io/OutputStream;
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1045
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1046
    return-void

    .line 1034
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "partUri":Landroid/net/Uri;
    .end local v2    # "res":Landroid/net/Uri;
    :cond_6
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1036
    const-string v4, "fn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v4, "name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "part_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMceInitiatedOperation(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgHandle"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMceInitiatedOperation for handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;)V

    .line 270
    .local v0, "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    iput-object p1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    .line 271
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    .line 272
    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 273
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public deinit()V
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->unregister()V

    .line 1311
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unRegisterPhoneServiceStateListener()V

    .line 1312
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->failPendingMessages()V

    .line 1313
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeDeletedMessages()V

    .line 1314
    return-void
.end method

.method public findLocationMceInitiatedOperation(Ljava/lang/String;)I
    .locals 10
    .param p1, "msgHandle"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 289
    const/4 v2, -0x1

    .line 291
    .local v2, "location":I
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 292
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 294
    const-string v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findLocationMceInitiatedOperation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v4, "staleOpList":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;>;"
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;

    .line 298
    .local v3, "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    invoke-virtual {v0, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-object v7, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->time:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 300
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;

    .line 306
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    :cond_2
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;

    .line 311
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 317
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    :cond_4
    const/4 v5, -0x1

    if-ne v2, v5, :cond_6

    .line 318
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;

    .line 319
    .restart local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    iget-object v5, v3, Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;->msgHandle:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 325
    .end local v3    # "op":Lcom/android/bluetooth/map/BluetoothMapContentObserver$BluetoothMnsMsgHndlMceInitOp;
    :cond_6
    const-string v5, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findLocationMce loc"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v2
.end method

.method public init()V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mSmsBroadcastReceiver:Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$SmsBroadcastReceiver;->register()V

    .line 1306
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->registerPhoneServiceStateListener()V

    .line 1307
    return-void
.end method

.method public pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)J
    .locals 24
    .param p1, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 742
    const-string v2, "BluetoothMapContentObserver"

    const-string v6, "pushMessage"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v21

    .line 744
    .local v21, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    const/4 v14, 0x0

    .line 746
    .local v14, "transparent":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v15

    .line 747
    .local v15, "retry":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v18

    .line 748
    .local v18, "charset":I
    const-wide/16 v12, -0x1

    .line 750
    .local v12, "handle":J
    if-nez v21, :cond_1

    .line 751
    const-string v2, "BluetoothMapContentObserver"

    const-string v6, "empty recipient list"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-wide/16 v6, -0x1

    .line 814
    :goto_1
    return-wide v6

    .line 744
    .end local v12    # "handle":J
    .end local v14    # "transparent":I
    .end local v15    # "retry":I
    .end local v18    # "charset":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v14

    goto :goto_0

    .line 755
    .restart local v12    # "handle":J
    .restart local v14    # "transparent":I
    .restart local v15    # "retry":I
    .restart local v18    # "charset":I
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 756
    .local v20, "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEnvLevel()I

    move-result v2

    if-nez v2, :cond_2

    .line 759
    const/4 v8, 0x0

    .line 760
    .local v8, "read":Z
    const/4 v9, 0x1

    .line 762
    .local v9, "deliveryReport":Z
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentObserver$3;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 767
    :pswitch_0
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .local v4, "phone":Ljava/lang/String;
    move-object/from16 v2, p1

    .line 768
    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J

    move-result-wide v12

    .line 769
    goto :goto_2

    .line 775
    .end local v4    # "phone":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getFirstPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "phone":Ljava/lang/String;
    move-object/from16 v2, p1

    .line 776
    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->getSmsBody()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, "msgBody":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://sms/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 778
    .local v3, "contentUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object v17

    .line 781
    .local v17, "uri":Landroid/net/Uri;
    if-nez v17, :cond_3

    .line 782
    const-string v2, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pushMessage - failure on add to uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 786
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 789
    const-string v2, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 790
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;

    move-object/from16 v11, p0

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;JIILjava/lang/String;Landroid/net/Uri;)V

    .line 792
    .local v10, "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mPushMsgList:Ljava/util/Map;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v5}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 801
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v4    # "phone":Ljava/lang/String;
    .end local v5    # "msgBody":Ljava/lang/String;
    .end local v10    # "msgInfo":Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .end local v17    # "uri":Landroid/net/Uri;
    :pswitch_2
    const-string v2, "BluetoothMapContentObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v2, "draft"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 803
    const-string p2, "Drafts"

    .line 804
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getEmailAddresses()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->sendEmailMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J

    move-result-wide v12

    goto/16 :goto_2

    .end local v8    # "read":Z
    .end local v9    # "deliveryReport":Z
    .end local v20    # "recipient":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    :cond_5
    move-wide v6, v12

    .line 814
    goto/16 :goto_1

    .line 762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V
    .locals 4
    .param p1, "mns"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "masId"    # I

    .prologue
    .line 331
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "registerObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    .line 334
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 336
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->initMsgList()V

    .line 337
    return-void
.end method

.method public removeMceInitiatedOperation(I)V
    .locals 3
    .param p1, "location"    # I

    .prologue
    .line 280
    const-string v0, "BluetoothMapContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMceInitiatedOperation for location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->opList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public sendEmailMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "toList"    # [Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 819
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V
    .locals 7
    .param p1, "evt"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    .prologue
    .line 346
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->eventType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->oldFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, -0x1

    .line 350
    .local v1, "location":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    :cond_0
    const-string v3, "BluetoothMapContentObserver"

    const-string v4, "sendEvent: No MNS client registered or connected- don\'t send event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-wide v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    iget-object v5, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->msgType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "msgHandle":Ljava/lang/String;
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgHandle is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-wide v3, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->handle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->findLocationMceInitiatedOperation(Ljava/lang/String;)I

    move-result v1

    .line 357
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 360
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;->encode()[B

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMasId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEvent([BI)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "BluetoothMapContentObserver"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->removeMceInitiatedOperation(I)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;Ljava/lang/String;)V
    .locals 12
    .param p1, "msgInfo"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1051
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1052
    .local v0, "smsMng":Landroid/telephony/SmsManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1053
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    .line 1055
    new-instance v5, Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1056
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v4, Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1058
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->parts:I

    if-ge v6, v1, :cond_0

    .line 1060
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY"

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1061
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "HANDLE"

    iget-wide v8, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1062
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1066
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "HANDLE"

    iget-wide v8, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->id:J

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1067
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v7, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1071
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "BluetoothMapContentObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContentObserver$PushMsgInfo;->phone:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1075
    return-void
.end method

.method public sendMmsMessage(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 6
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "to_address"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 835
    if-eqz p1, :cond_2

    const-string v3, "outbox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "drafts"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "draft"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 836
    :cond_0
    const/4 v3, 0x3

    invoke-direct {p0, v3, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMmsToFolder(ILjava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J

    move-result-wide v0

    .line 838
    .local v0, "handle":J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v0

    if-eqz v3, :cond_1

    const-string v3, "outbox"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 839
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->moveDraftToOutbox(J)V

    .line 841
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MMS_SEND_OUTBOX_MSG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v3, "BluetoothMapContentObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcasting intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 845
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :cond_1
    return-wide v0

    .line 848
    .end local v0    # "handle":J
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot push message to other folders than outbox/drafts"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 4
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "res":Z
    const-string v1, "BluetoothMapContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMessageStatusDeleted: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v1, 0x1

    if-ne p4, v1, :cond_3

    .line 672
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_2

    .line 673
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageSms(J)Z

    move-result v0

    .line 684
    :cond_1
    :goto_0
    return v0

    .line 674
    :cond_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    .line 675
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->deleteMessageMms(J)Z

    move-result v0

    goto :goto_0

    .line 677
    :cond_3
    if-nez p4, :cond_1

    .line 678
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v1, :cond_4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_5

    .line 679
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageSms(J)Z

    move-result v0

    goto :goto_0

    .line 680
    :cond_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v1, :cond_1

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->unDeleteMessageMms(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 9
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 688
    const/4 v8, 0x1

    .line 690
    .local v8, "res":Z
    const-string v0, "BluetoothMapContentObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageStatusRead: handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v0, :cond_2

    .line 697
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 698
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 700
    .local v6, "c":Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 701
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return v8

    .line 703
    :cond_2
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne p3, v0, :cond_1

    .line 704
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 705
    .restart local v1    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 707
    .restart local v6    # "c":Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 708
    .restart local v7    # "contentValues":Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1, v7, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "BluetoothMapContentObserver"

    const-string v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 343
    return-void
.end method
