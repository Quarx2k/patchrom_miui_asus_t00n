.class public Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;
.super Lcom/android/bluetooth/map/BluetoothMapContentObserver;
.source "BluetoothMapContentEmailObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;,
        Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field private static final D:Z = true

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAILTYPE:Ljava/lang/String; = "type"

.field public static final EMAIL_ACCOUNT_URI:Landroid/net/Uri;

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final EMAIL_BOX_COLUMN_ACCOUNT_KEY:I = 0x2

.field public static final EMAIL_BOX_COLUMN_DISPLAY_NAME:I = 0x1

.field public static final EMAIL_BOX_COLUMN_RECORD_ID:I = 0x0

.field public static final EMAIL_BOX_COLUMN_TYPE:I = 0x3

.field public static final EMAIL_BOX_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_BOX_URI:Landroid/net/Uri;

.field public static final EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_MESSAGE_URI:Landroid/net/Uri;

.field private static final EMAIL_TO_MAP:[Ljava/lang/String;

.field public static final EMAIL_URI:Landroid/net/Uri;

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field public static final MSG_COL_ACCOUNT_KEY:I = 0x2

.field public static final MSG_COL_MAILBOX_KEY:I = 0x1

.field public static final MSG_COL_RECORD_ID:I = 0x0

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContentEmailObserver"

.field private static final THRESHOLD:I = 0xbb8

.field public static final TYPE_DELETED:I = 0x6

.field public static final TYPE_DRAFT:I = 0x3

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_SENT:I = 0x5

.field private static final UPDATE:I = 0x0

.field private static final V:Z = true


# instance fields
.field public folderName:Ljava/lang/String;

.field public id:J

.field private mAccountKey:J

.field private mCallback:Landroid/os/Handler;

.field private mDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmailAccountObserver:Landroid/database/ContentObserver;

.field private mEmailAddedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailBoxList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailDeletedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_URI:Landroid/net/Uri;

    .line 91
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 92
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "mailbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_BOX_URI:Landroid/net/Uri;

    .line 93
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_MESSAGE_URI:Landroid/net/Uri;

    .line 97
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "draft"

    aput-object v1, v0, v6

    const-string v1, "outbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_TO_MAP:[Ljava/lang/String;

    .line 132
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    const-string v1, "isDefault"

    aput-object v1, v0, v5

    const-string v1, "displayName"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 135
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailBoxList:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailList:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mDeletedList:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    .line 121
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mCallback:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAccountObserver:Landroid/database/ContentObserver;

    .line 166
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mObserver:Landroid/database/ContentObserver;

    .line 146
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mCallback:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->sendEvents()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 297
    return-void
.end method

.method private isMapFolder(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 203
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pushEmailToFolder(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 24
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "toAddress"    # Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 493
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getEmailBody()Ljava/lang/String;

    move-result-object v13

    .line 494
    .local v13, "msgBody":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getSystemMailboxGuessType(Ljava/lang/String;)I

    move-result v12

    .line 495
    .local v12, "folderType":I
    const/4 v11, -0x1

    .line 496
    .local v11, "folderId":I
    const-wide/16 v8, -0x1

    .line 497
    .local v8, "accountId":J
    const-string v17, ""

    .line 498
    .local v17, "originatorName":Ljava/lang/String;
    const-string v16, ""

    .line 499
    .local v16, "originatorEmail":Ljava/lang/String;
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 500
    .local v20, "timeObj":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 504
    .local v10, "cr":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 505
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 507
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 509
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 511
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 517
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    .line 518
    const-string v2, "BluetoothMapContentEmailObserver"

    const-string v3, "INTERNAL ERROR For ACCNT ID"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-wide/16 v14, -0x1

    .line 596
    :goto_1
    return-wide v14

    .line 515
    :cond_1
    const-string v2, "BluetoothMapContentEmailObserver"

    const-string v3, "Account CURSOR NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_2
    const/4 v10, 0x0

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/mailbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 527
    if-eqz v10, :cond_4

    .line 528
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 529
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 530
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 532
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_4
    const/4 v2, -0x1

    if-ne v11, v2, :cond_5

    .line 535
    const-string v2, "BluetoothMapContentEmailObserver"

    const-string v3, "INTERNAL ERROR For Folder ID "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-wide/16 v14, -0x1

    goto :goto_1

    .line 539
    :cond_5
    const-string v2, "BluetoothMapContentEmailObserver"

    const-string v3, "-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "To address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Originator email address:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Originator email name:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Stamp:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account Key:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder Id:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder Name:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subject"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 551
    .local v22, "values":Landroid/content/ContentValues;
    const-string v2, "syncServerTimeStamp"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "syncServerId"

    const-string v3, "5:65"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "displayName"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "timeStamp"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    const-string v2, "subject"

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v2, "flagLoaded"

    const-string v3, "1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v2, "flagFavorite"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "flagAttachment"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v2, 0x3

    if-ne v12, v2, :cond_6

    .line 560
    const-string v2, "flags"

    const-string v3, "1179648"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_2
    const-string v2, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    const-string v2, "fromList"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v2, "mailboxKey"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v2, "toList"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "flagRead"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/message"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 572
    .local v21, "uri":Landroid/net/Uri;
    const-string v3, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW URI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v21, :cond_7

    const-string v2, "null"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    if-nez v21, :cond_8

    .line 575
    const-string v2, "BluetoothMapContentEmailObserver"

    const-string v3, "INTERNAL ERROR : NEW URI NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-wide/16 v14, -0x1

    goto/16 :goto_1

    .line 562
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_6
    const-string v2, "flags"

    const-string v3, "0"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 572
    .restart local v21    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 578
    :cond_8
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 579
    .local v19, "str":Ljava/lang/String;
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CREATE URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v2, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 581
    .local v18, "splitStr":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_9

    .line 582
    const-wide/16 v14, -0x1

    goto/16 :goto_1

    .line 585
    :cond_9
    const-string v2, "BluetoothMapContentEmailObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NEW HANDLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 589
    .local v23, "valuesBody":Landroid/content/ContentValues;
    const-string v2, "messageKey"

    const/4 v3, 0x4

    aget-object v3, v18, v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "textContent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.email.provider/body"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 595
    const/4 v2, 0x4

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 596
    .local v14, "msgId":J
    goto/16 :goto_1
.end method

.method private sendEvents()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 366
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    .line 369
    .local v10, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    if-eqz v10, :cond_1

    .line 370
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;

    .line 371
    .local v8, "email":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    iget-object v1, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    const-string v2, "sent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "sending SendingSuccess mns event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v2, "SendingSuccess"

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    iget-object v5, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 378
    .local v0, "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_0

    .line 380
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    :cond_0
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "sending NewMessage mns event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v2, "NewMessage"

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->folderName:Ljava/lang/String;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 386
    .restart local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto/16 :goto_0

    .line 390
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v8    # "email":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 393
    .end local v10    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 394
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mDeletedList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 395
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    .line 396
    .restart local v10    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;

    .line 397
    .restart local v8    # "email":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "sending MessageDeleted mns event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email.mType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;

    const-string v2, "MessageDeleted"

    iget-wide v3, v8, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;->mId:J

    const-string v5, "deleted"

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 404
    .restart local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->sendEvent(Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;)V

    goto :goto_1

    .line 406
    .end local v0    # "evt":Lcom/android/bluetooth/map/BluetoothMapContentObserver$Event;
    .end local v8    # "email":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 408
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 645
    const-string v0, "BluetoothMapContentEmailObserver"

    const-string v1, "deinit "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->onDisconnect()V

    .line 647
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 640
    const-string v0, "BluetoothMapContentEmailObserver"

    const-string v1, "init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->onConnect()V

    .line 642
    return-void
.end method

.method public onConnect()V
    .locals 5

    .prologue
    .line 411
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "onConnect() registering email account content observer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 4

    .prologue
    .line 422
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "onDisconnect() unregistering email account content observer"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerObserver(Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V
    .locals 5
    .param p1, "mns"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p2, "masId"    # I

    .prologue
    const/4 v3, 0x1

    .line 252
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "registerObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mAccountKey:J

    .line 254
    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mMasId:I

    .line 255
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 256
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->updateEmailBox()V

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->update(Z)V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendEmailMessage(Ljava/lang/String;[Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J
    .locals 14
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "toList"    # [Ljava/lang/String;
    .param p3, "msg"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 602
    const-string v11, "BluetoothMapContentEmailObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendMessage for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    if-eqz p1, :cond_3

    const-string v11, "outbox"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "drafts"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 616
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v3, "address":Ljava/lang/StringBuilder;
    move-object/from16 v4, p2

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v10, v4, v8

    .line 618
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v11, ";"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 621
    .end local v10    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-direct {p0, p1, v11, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->pushEmailToFolder(Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)J

    move-result-wide v6

    .line 622
    .local v6, "handle":J
    const-string v11, "+"

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 624
    const-wide/16 v11, -0x1

    cmp-long v11, v11, v6

    if-eqz v11, :cond_2

    const-string v11, "outbox"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 625
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 626
    .local v5, "emailIn":Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 627
    .local v1, "accountId":J
    const-string v11, "BluetoothMapContentEmailObserver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pushToEmail : handle SEND MAIL"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "accounId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v11, "org.codeaurora.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v11, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v5, v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 630
    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 632
    .end local v1    # "accountId":J
    .end local v5    # "emailIn":Landroid/content/Intent;
    :cond_2
    return-wide v6

    .line 635
    .end local v3    # "address":Ljava/lang/StringBuilder;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "handle":J
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_3
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Cannot push email message to other folders than outbox/drafts"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 11
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 439
    const/4 v10, 0x0

    .line 440
    .local v10, "res":Z
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v6

    .line 441
    .local v6, "accountId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.email.provider/message/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 442
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 444
    .local v8, "crEmail":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const-string v0, "BluetoothMapContentEmailObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMessageStatusDeleted: EMAIL handle "

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

    const-string v3, "accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v9, "emailIn":Landroid/content/Intent;
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 449
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->addMceInitiatedOperation(Ljava/lang/String;)V

    .line 450
    const-string v0, "org.codeaurora.email.intent.action.MAIL_SERVICE_DELETE_MESSAGE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    :goto_0
    const-string v0, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v9, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 457
    const-string v0, "org.codeaurora.email.intent.extra.MESSAGE_ID"

    invoke-virtual {v9, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 459
    const/4 v10, 0x1

    .line 463
    .end local v9    # "emailIn":Landroid/content/Intent;
    :goto_1
    if-eqz v8, :cond_0

    .line 464
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_0
    return v10

    .line 452
    .restart local v9    # "emailIn":Landroid/content/Intent;
    :cond_1
    const-string v0, "org.codeaurora.email.intent.action.MAIL_SERVICE_MOVE_MESSAGE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v0, "org.codeaurora.email.intent.extra.MESSAGE_INFO"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 461
    .end local v9    # "emailIn":Landroid/content/Intent;
    :cond_2
    const-string v0, "BluetoothMapContentEmailObserver"

    const-string v2, "Returning from setMessage Status Deleted"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z
    .locals 7
    .param p1, "handle"    # J
    .param p3, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .param p4, "statusValue"    # I

    .prologue
    .line 472
    const/4 v3, 0x1

    .line 475
    .local v3, "res":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 476
    .local v2, "emailIn":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 477
    .local v0, "accountId":J
    const-string v4, "BluetoothMapContentEmailObserver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMessageStatusRead: EMAIL handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "accounId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v4, "org.codeaurora.email.intent.action.MAIL_SERVICE_MESSAGE_READ"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v4, "org.codeaurora.email.intent.extra.MESSAGE_INFO"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v4, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    const-string v4, "org.codeaurora.email.intent.extra.MESSAGE_ID"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 485
    return v3
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 432
    const-string v0, "BluetoothMapContentEmailObserver"

    const-string v1, "unregisterObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 435
    return-void
.end method

.method update(Z)V
    .locals 17
    .param p1, "init"    # Z

    .prologue
    .line 300
    const-string v3, "BluetoothMapContentEmailObserver"

    const-string v4, "update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->clear()V

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 310
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_MESSAGE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 312
    .local v11, "crEmail":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailBoxList:Ljava/util/HashMap;

    .line 315
    .local v10, "boxList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 316
    .local v16, "oldEmailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v13, "emailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_1
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 319
    .local v5, "accountKey":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mAccountKey:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_5

    .line 354
    :cond_2
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailList:Ljava/util/HashMap;

    .line 357
    .end local v5    # "accountKey":J
    .end local v10    # "boxList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;>;"
    .end local v13    # "emailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    .end local v16    # "oldEmailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_4
    :goto_1
    return-void

    .line 322
    .restart local v5    # "accountKey":J
    .restart local v10    # "boxList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;>;"
    .restart local v13    # "emailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    .restart local v16    # "oldEmailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_5
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    .line 323
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 324
    .local v14, "mailboxKey":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 325
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;

    .line 326
    .local v9, "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    if-eqz v9, :cond_2

    .line 329
    iget v3, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->isMapFolder(I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_TO_MAP:[Ljava/lang/String;

    iget v4, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    aget-object v3, v3, v4

    :goto_2
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->folderName:Ljava/lang/String;

    .line 331
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->folderName:Ljava/lang/String;

    iget v8, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;-><init>(JJLjava/lang/String;I)V

    .line 333
    .local v2, "msg":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    iget v3, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 334
    if-eqz p1, :cond_7

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mDeletedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    .end local v5    # "accountKey":J
    .end local v9    # "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    .end local v10    # "boxList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;>;"
    .end local v11    # "crEmail":Landroid/database/Cursor;
    .end local v13    # "emailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    .end local v14    # "mailboxKey":J
    .end local v16    # "oldEmailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :catch_0
    move-exception v12

    .line 360
    .local v12, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v11, 0x0

    .line 361
    .restart local v11    # "crEmail":Landroid/database/Cursor;
    const-string v3, "BluetoothMapContentEmailObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQLite exception: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 329
    .end local v12    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v5    # "accountKey":J
    .restart local v9    # "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    .restart local v10    # "boxList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;>;"
    .restart local v13    # "emailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    .restart local v14    # "mailboxKey":J
    .restart local v16    # "oldEmailList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;>;"
    :cond_6
    :try_start_1
    iget-object v3, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mDisplayName:Ljava/lang/String;

    goto :goto_2

    .line 336
    .restart local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mDeletedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    const-string v3, "BluetoothMapContentEmailObserver"

    const-string v4, "Putting in deleted list"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailDeletedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 341
    :cond_8
    iget v3, v9, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->mType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 347
    const-string v3, "BluetoothMapContentEmailObserver"

    const-string v4, "Putting in added list"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailAddedList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 352
    .end local v2    # "msg":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailMessage;
    .end local v9    # "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    :cond_9
    const-string v3, "BluetoothMapContentEmailObserver"

    const-string v4, "Mailbox is not updated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method updateEmailBox()V
    .locals 13

    .prologue
    .line 266
    const-string v10, "BluetoothMapContentEmailObserver"

    const-string v11, "updateEmailBox"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailBoxList:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 268
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_BOX_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    .local v8, "crBox":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 275
    :cond_0
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 276
    .local v2, "id":J
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "displayName":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 278
    .local v5, "accountKey":J
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 279
    .local v7, "type":I
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;-><init>(JLjava/lang/String;JI)V

    .line 280
    .local v1, "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mEmailBoxList:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v10, "BluetoothMapContentEmailObserver"

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 284
    .end local v1    # "box":Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$EmailBox;
    .end local v2    # "id":J
    .end local v4    # "displayName":Ljava/lang/String;
    .end local v5    # "accountKey":J
    .end local v7    # "type":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 286
    .end local v8    # "crBox":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 287
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v8, 0x0

    .line 288
    .restart local v8    # "crBox":Landroid/database/Cursor;
    const-string v10, "BluetoothMapContentEmailObserver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SQLite exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
