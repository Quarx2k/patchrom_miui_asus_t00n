.class public final Lcom/android/emailcommon/provider/Account;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AccountColumns;


# static fields
.field public static final ACCOUNT_FLAGS_COLUMN_FLAGS:I = 0x1

.field public static final ACCOUNT_FLAGS_COLUMN_ID:I = 0x0

.field public static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_ID_COMBINED_VIEW:J = 0x1000000000000000L

.field public static final AUTO_FETCH_ATTACHMENT_ALWAYS:I = 0x2

.field public static final AUTO_FETCH_ATTACHMENT_NEVER:I = 0x0

.field public static final AUTO_FETCH_ATTACHMENT_WIFI:I = 0x1

.field public static final CHECK_INTERVAL_NEVER:I = -0x1

.field public static final CHECK_INTERVAL_PUSH:I = -0x2

.field public static final CONTENT_AUTO_FETCH_ATTACHMENTS_COLUMN:I = 0x13

.field public static final CONTENT_COMPATIBILITY_UUID_COLUMN:I = 0x9

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_EMAIL_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_HOST_AUTH_KEY_RECV_COLUMN:I = 0x6

.field public static final CONTENT_HOST_AUTH_KEY_SEND_COLUMN:I = 0x7

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAILBOX_TYPE_COLUMN:I = 0x1

.field public static final CONTENT_MAX_ATTACHMENT_SIZE_COLUMN:I = 0x12

.field public static final CONTENT_NEW_MESSAGE_COUNT_COLUMN:I = 0xd

.field public static final CONTENT_PING_DURATION_COLUMN:I = 0x11

.field public static final CONTENT_POLICY_KEY_COLUMN:I = 0x10

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_VERSION_COLUMN:I = 0xc

.field public static final CONTENT_RINGTONE_URI_COLUMN:I = 0xb

.field public static final CONTENT_SECURITY_SYNC_KEY_COLUMN:I = 0xe

.field public static final CONTENT_SENDER_NAME_COLUMN:I = 0xa

.field public static final CONTENT_SET_SYNC_SIZE_ENABLED_COLUMN:I = 0x14

.field public static final CONTENT_SIGNATURE_COLUMN:I = 0xf

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x5

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x4

.field public static final CONTENT_SYNC_SIZE_COLUMN:I = 0x15

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/Account;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETE_POLICY_7DAYS:I = 0x1

.field public static final DELETE_POLICY_NEVER:I = 0x0

.field public static final DELETE_POLICY_ON_DELETE:I = 0x2

.field private static final FIND_INBOX_SELECTION:Ljava/lang/String; = "type = 0 AND accountKey =?"

.field public static final FLAGS_BACKGROUND_ATTACHMENTS:I = 0x100

.field public static final FLAGS_DELETE_POLICY_MASK:I = 0xc

.field public static final FLAGS_DELETE_POLICY_SHIFT:I = 0x2

.field public static final FLAGS_INCOMPLETE:I = 0x10

.field public static final FLAGS_INITIAL_FOLDER_LIST_LOADED:I = 0x2000

.field public static final FLAGS_NOTIFY_NEW_MAIL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAGS_SECURITY_HOLD:I = 0x20

.field public static final FLAGS_SUPPORTS_GLOBAL_SEARCH:I = 0x1000

.field public static final FLAGS_SUPPORTS_SEARCH:I = 0x800

.field public static final FLAGS_SUPPORTS_SMART_FORWARD:I = 0x80

.field public static final FLAGS_SYNC_ADAPTER:I = 0x200

.field public static final FLAGS_SYNC_DISABLED:I = 0x400

.field public static final FLAGS_VIBRATE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_SELECTION:Ljava/lang/String; = "mailboxKey =?"

.field public static NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final NO_ACCOUNT:J = -0x1L

.field public static RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri; = null

.field public static final SECURITY_NONZERO_SELECTION:Ljava/lang/String; = "policyKey IS NOT NULL AND policyKey!=0"

.field public static final TABLE_NAME:Ljava/lang/String; = "Account"

.field public static final UNREAD_COUNT_SELECTION:Ljava/lang/String; = "mailboxKey =? and flagRead= 0"

.field private static final UUID_SELECTION:Ljava/lang/String; = "compatibilityUuid =?"


# instance fields
.field public mAutoFetchAttachments:I

.field public mCompatibilityUuid:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mFlags:I

.field public mHostAuthKeyRecv:J

.field public mHostAuthKeySend:J

.field public transient mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

.field public transient mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

.field public mNewMessageCount:I

.field public mPingDuration:J

.field public transient mPolicy:Lcom/android/emailcommon/provider/Policy;

.field public mPolicyKey:J

.field public mProtocolVersion:Ljava/lang/String;

.field private mRingtoneUri:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mSecuritySyncKey:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSetSyncSizeEnabled:I

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "emailAddress"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hostAuthKeyRecv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hostAuthKeySend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "compatibilityUuid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "senderName"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ringtoneUri"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "protocolVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "policyKey"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "pingDuration"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "maxAttachmentSize"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "autoFetchAttachments"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "setSyncSizeEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "syncSize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 202
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Account;->ID_TYPE_PROJECTION:[Ljava/lang/String;

    .line 208
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 893
    new-instance v0, Lcom/android/emailcommon/provider/Account$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 229
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 230
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 233
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 234
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 235
    iput v1, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 237
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 238
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 951
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 952
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSetSyncSizeEnabled:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    .line 973
    iput-object v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 975
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 978
    :cond_0
    iput-object v3, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 980
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/HostAuth;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 983
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    .line 984
    return-void
.end method

.method public static clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 728
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 731
    .local v8, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 734
    .local v10, "flags":I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    .line 735
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 736
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 738
    .local v6, "accountId":J
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 739
    .local v11, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 743
    .end local v6    # "accountId":J
    .end local v9    # "cv":Landroid/content/ContentValues;
    .end local v10    # "flags":I
    .end local v11    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 745
    return-void
.end method

.method public static getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 685
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    .line 686
    .local v0, "accountId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 687
    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 689
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAccountIdForMessageId(Landroid/content/Context;J)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    .line 675
    const-string v0, "accountKey"

    invoke-static {p0, p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountIdFromShortcutSafeUri(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, -0x1

    .line 560
    const-string v4, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-wide v2

    .line 565
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 566
    .local v1, "ps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "account"

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 577
    :catch_0
    move-exception v2

    .line 582
    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Account;->getAccountIdFromUuid(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getAccountIdFromUuid(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 589
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "compatibilityUuid =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultAccountId(Landroid/content/Context;J)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastUsedAccountId"    # J

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 605
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 608
    .local v9, "firstAccount":J
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 612
    .local v6, "accountId":J
    cmp-long v0, v6, p1

    if-nez v0, :cond_2

    .line 622
    if-eqz v8, :cond_1

    .line 623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v6    # "accountId":J
    :cond_1
    :goto_0
    return-wide v6

    .line 616
    .restart local v6    # "accountId":J
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_3

    .line 617
    move-wide v9, v6

    .line 619
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 622
    .end local v6    # "accountId":J
    :cond_4
    if-eqz v8, :cond_5

    .line 623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-wide v6, v9

    .line 627
    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 623
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private static getId(Landroid/net/Uri;)J
    .locals 2
    .param p0, "u"    # Landroid/net/Uri;

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInboxId(Landroid/content/Context;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    .line 715
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type = 0 AND accountKey =?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 637
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 638
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 546
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static initAccount()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/resetNewMessageCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->RESET_NEW_MESSAGE_COUNT_URI:Landroid/net/Uri;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    .line 129
    return-void
.end method

.method public static isAutomaticSyncDisabledByRoaming(Landroid/content/Context;J)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v6, 0x0

    .line 755
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 757
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v6

    .line 758
    :cond_1
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 760
    .local v4, "policyKey":J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 762
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 764
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 766
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_0

    .line 768
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 769
    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v3

    .line 771
    .local v3, "policy":Lcom/android/emailcommon/provider/Policy;
    if-eqz v3, :cond_0

    .line 772
    iget-boolean v6, v3, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    goto :goto_0
.end method

.method public static isNormalAccount(J)Z
    .locals 2
    .param p0, "accountId"    # J

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x1000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecurityHold(Landroid/content/Context;J)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 705
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isValidId(Landroid/content/Context;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 696
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    return v6
.end method

.method public static restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 242
    const-class v1, Lcom/android/emailcommon/provider/Account;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public static supportsServerSearch(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    const/4 v1, 0x0

    .line 525
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 526
    .local v0, "account":Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountManagerAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 664
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAutoFetchAttachments()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    return v0
.end method

.method public getDeletePolicy()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    return-wide v0
.end method

.method public getLocalStoreUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local://localhost/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 503
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 504
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    .line 509
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    return-object v0

    .line 506
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0
.end method

.method public getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v0, :cond_0

    .line 492
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 493
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    .line 498
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    return-object v0

    .line 495
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    goto :goto_0
.end method

.method public getPingDuration()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    return-wide v0
.end method

.method public getProtocol(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    iget-wide v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 651
    .local v0, "hostAuth":Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 654
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutSafeUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/provider/Account;->getShortcutSafeUriFromUuid(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncInterval()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    return v0
.end method

.method public getSyncLookback()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    return v0
.end method

.method public getSyncSize()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 263
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    invoke-virtual {p0, v6}, Lcom/android/emailcommon/provider/Account;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    return-void

    .line 266
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 275
    sget-object v0, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    .line 276
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 277
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 278
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    .line 279
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 280
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 281
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 282
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 283
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 284
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 285
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 286
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 287
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    .line 288
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    .line 289
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 290
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 291
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    .line 292
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    .line 293
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    .line 294
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSetSyncSizeEnabled:I

    .line 295
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    .line 296
    return-void
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->isSaved()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 783
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v11

    .line 788
    :cond_0
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v11, :cond_1

    .line 789
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v10

    .line 853
    :goto_0
    return-object v10

    .line 792
    :cond_1
    const/4 v2, 0x0

    .line 793
    .local v2, "index":I
    const/4 v7, -0x1

    .line 794
    .local v7, "recvIndex":I
    const/4 v9, -0x1

    .line 798
    .local v9, "sendIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v11, :cond_2

    .line 800
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    move v7, v2

    .line 801
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 805
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_2
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v11, :cond_3

    .line 806
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v9, v2

    .line 807
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v11, v11, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 813
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_3
    const/4 v1, 0x0

    .line 814
    .local v1, "cv":Landroid/content/ContentValues;
    if-gez v7, :cond_4

    if-ltz v9, :cond_6

    .line 815
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "cv":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 816
    .restart local v1    # "cv":Landroid/content/ContentValues;
    if-ltz v7, :cond_5

    .line 817
    const-string v11, "hostAuthKeyRecv"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    :cond_5
    if-ltz v9, :cond_6

    .line 820
    const-string v11, "hostAuthKeySend"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    :cond_6
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mBaseUri:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 825
    .local v0, "b":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 826
    if-eqz v1, :cond_7

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 829
    :cond_7
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v8

    .line 835
    .local v8, "results":[Landroid/content/ContentProviderResult;
    if-ltz v7, :cond_8

    .line 836
    aget-object v11, v8, v7

    iget-object v11, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v11}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 837
    .local v4, "newId":J
    iput-wide v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    .line 838
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iput-wide v4, v11, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 840
    .end local v4    # "newId":J
    :cond_8
    if-ltz v9, :cond_9

    .line 841
    aget-object v11, v8, v9

    iget-object v11, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v11}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 842
    .restart local v4    # "newId":J
    iput-wide v4, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    .line 843
    iget-object v11, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    iput-wide v4, v11, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 845
    .end local v4    # "newId":J
    :cond_9
    aget-object v11, v8, v2

    iget-object v10, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 846
    .local v10, "u":Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/emailcommon/provider/Account;->getId(Landroid/net/Uri;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/emailcommon/provider/Account;->mId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 848
    .end local v8    # "results":[Landroid/content/ContentProviderResult;
    .end local v10    # "u":Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 853
    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 850
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method public setAutoFetchAttachments(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    .line 420
    return-void
.end method

.method public setDeletePolicy(I)V
    .locals 2
    .param p1, "newPolicy"    # I

    .prologue
    .line 469
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 470
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 471
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "newFlags"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 453
    return-void
.end method

.method public setPingDuration(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 405
    iput-wide p1, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    .line 406
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setSyncInterval(I)V
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    .line 374
    return-void
.end method

.method public setSyncLookback(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 391
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    .line 392
    return-void
.end method

.method public setSyncSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    .line 438
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 858
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v1, "hostAuthKeyRecv"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    const-string v1, "hostAuthKeySend"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 866
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    const-string v1, "compatibilityUuid"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v1, "ringtoneUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v1, "protocolVersion"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v1, "newMessageCount"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    const-string v1, "securitySyncKey"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v1, "policyKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 875
    const-string v1, "pingDuration"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/Account;->mPingDuration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 876
    const-string v1, "autoFetchAttachments"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v1, "setSyncSizeEnabled"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSetSyncSizeEnabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v1, "syncSize"

    iget v2, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 992
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 912
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 913
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeyRecv:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 919
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthKeySend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 920
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mNewMessageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 928
    iget-wide v0, p0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSetSyncSizeEnabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mSyncSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 934
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 939
    :goto_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 941
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mHostAuthSend:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/provider/HostAuth;->writeToParcel(Landroid/os/Parcel;I)V

    .line 945
    :goto_1
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mAutoFetchAttachments:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    return-void

    .line 936
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
