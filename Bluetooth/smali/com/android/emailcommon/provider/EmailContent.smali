.class public abstract Lcom/android/emailcommon/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/EmailContent$PolicyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;,
        Lcom/android/emailcommon/provider/EmailContent$MailboxColumns;,
        Lcom/android/emailcommon/provider/EmailContent$QuickResponseColumns;,
        Lcom/android/emailcommon/provider/EmailContent$AccountColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Attachment;,
        Lcom/android/emailcommon/provider/EmailContent$AttachmentColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Message;,
        Lcom/android/emailcommon/provider/EmailContent$MessageColumns;,
        Lcom/android/emailcommon/provider/EmailContent$Body;,
        Lcom/android/emailcommon/provider/EmailContent$BodyColumns;,
        Lcom/android/emailcommon/provider/EmailContent$SyncColumns;
    }
.end annotation


# static fields
.field public static ACCOUNT_CHECK_URI:Landroid/net/Uri; = null

.field public static final ADD_COLUMN_NAME:Ljava/lang/String; = "add"

.field public static AUTHORITY:Ljava/lang/String; = null

.field public static CONTENT_NOTIFIER_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNT_COLUMNS:[Ljava/lang/String;

.field public static DEVICE_FRIENDLY_NAME:Ljava/lang/String; = null

.field public static EMAIL_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final FIELD_COLUMN_NAME:Ljava/lang/String; = "field"

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field public static final ID_PROJECTION_COLUMN:I = 0x0

.field public static final ID_SELECTION:Ljava/lang/String; = "_id =?"

.field public static final LAST_SYNC_RESULT_AUTH_ERROR:I = 0x2

.field public static final LAST_SYNC_RESULT_CONNECTION_ERROR:I = 0x1

.field public static final LAST_SYNC_RESULT_INTERNAL_ERROR:I = 0x5

.field public static final LAST_SYNC_RESULT_SECURITY_ERROR:I = 0x3

.field public static final LAST_SYNC_RESULT_SUCCESS:I = 0x0

.field public static MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static MAILBOX_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final NOTIFICATION_MAILBOX_ID_COLUMN:I = 0x0

.field public static final NOTIFICATION_MAILBOX_UNREAD_COUNT_COLUMN:I = 0x1

.field public static final NOTIFICATION_MAILBOX_UNSEEN_COUNT_COLUMN:I = 0x2

.field public static NOTIFIER_AUTHORITY:Ljava/lang/String; = null

.field public static final NOT_SAVED:I = -0x1

.field public static final PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static PICK_SENT_FOLDER_URI:Landroid/net/Uri; = null

.field public static PICK_TRASH_FOLDER_URI:Landroid/net/Uri; = null

.field public static PROVIDER_PERMISSION:Ljava/lang/String; = null

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final SET_COLUMN_NAME:Ljava/lang/String; = "set"

.field public static final SYNC_STATUS_BACKGROUND:I = 0x4

.field public static final SYNC_STATUS_LIVE:I = 0x2

.field public static final SYNC_STATUS_NONE:I = 0x0

.field public static final SYNC_STATUS_USER:I = 0x1


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    .line 139
    const-string v0, "deviceFriendlyName"

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent;->DEVICE_FRIENDLY_NAME:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 287
    return-void
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-static {p0, p1, v0, v0}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 267
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public static delete(Landroid/content/Context;Landroid/net/Uri;J)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent;

    .line 220
    .local v0, "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 221
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v0    # "content":Lcom/android/emailcommon/provider/EmailContent;, "TT;"
    :goto_0
    return-object v0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 228
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-class v2, Lcom/android/emailcommon/provider/EmailContent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/emailcommon/R$string;->email_package_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".provider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    .line 148
    const-string v1, "EmailContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".notifier"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->NOTIFIER_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/pickTrashFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_TRASH_FOLDER_URI:Landroid/net/Uri;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/pickSentFolder"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PICK_SENT_FOLDER_URI:Landroid/net/Uri;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/mailboxNotification"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_NOTIFICATION_URI:Landroid/net/Uri;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/mailboxMostRecentMessage"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->MAILBOX_MOST_RECENT_MESSAGE_URI:Landroid/net/Uri;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/accountCheck"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->ACCOUNT_CHECK_URI:Landroid/net/Uri;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/emailcommon/provider/EmailContent;->PROVIDER_PERMISSION:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/android/emailcommon/provider/Account;->initAccount()V

    .line 161
    invoke-static {}, Lcom/android/emailcommon/provider/Mailbox;->initMailbox()V

    .line 162
    invoke-static {}, Lcom/android/emailcommon/provider/QuickResponse;->initQuickResponse()V

    .line 163
    invoke-static {}, Lcom/android/emailcommon/provider/HostAuth;->initHostAuth()V

    .line 164
    invoke-static {}, Lcom/android/emailcommon/provider/Policy;->initPolicy()V

    .line 165
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Message;->initMessage()V

    .line 166
    invoke-static {}, Lcom/android/emailcommon/provider/MessageMove;->init()V

    .line 167
    invoke-static {}, Lcom/android/emailcommon/provider/MessageStateChange;->init()V

    .line 168
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Body;->initBody()V

    .line 169
    invoke-static {}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->initAttachment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    monitor-exit v2

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isInitialSyncKey(Ljava/lang/String;)Z
    .locals 1
    .param p0, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "contentProjection"    # [Ljava/lang/String;
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/emailcommon/provider/EmailContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 201
    invoke-static {p2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 202
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v0

    .line 205
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-static {v6, p1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v3

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "id"    # J
    .param p4, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "limit"    # I

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSaved()Z
    .locals 4

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract restore(Landroid/database/Cursor;)V
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 236
    .local v0, "res":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 237
    return-object v0
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
