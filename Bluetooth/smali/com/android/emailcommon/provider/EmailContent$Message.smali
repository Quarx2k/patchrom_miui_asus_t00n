.class public final Lcom/android/emailcommon/provider/EmailContent$Message;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/emailcommon/provider/EmailContent$MessageColumns;
.implements Lcom/android/emailcommon/provider/EmailContent$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final ACCOUNT_KEY_SELECTION:Ljava/lang/String; = "accountKey=?"

.field public static final ALL_DRAFT_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1,3,4)"

.field public static final ALL_FAVORITE_SELECTION:Ljava/lang/String; = "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

.field public static final ALL_INBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

.field public static final ALL_OUTBOX_SELECTION:Ljava/lang/String; = "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

.field public static final ALL_UNREAD_SELECTION:Ljava/lang/String; = "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

.field private static final ATTACHMENT_INDEX_OFFSET:I = 0x2

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_BCC_LIST_COLUMN:I = 0x11

.field public static final CONTENT_CC_LIST_COLUMN:I = 0x10

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_DRAFT_INFO_COLUMN:I = 0xa

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_FLAG_ATTACHMENT_COLUMN:I = 0x7

.field public static final CONTENT_FLAG_FAVORITE_COLUMN:I = 0x6

.field public static final CONTENT_FLAG_LOADED_COLUMN:I = 0x5

.field public static final CONTENT_FLAG_READ_COLUMN:I = 0x4

.field public static final CONTENT_FLAG_SEEN_COLUMN:I = 0x19

.field public static final CONTENT_FROM_LIST_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_MAILBOX_KEY_COLUMN:I = 0xc

.field public static final CONTENT_MAIN_MAILBOX_KEY_COLUMN:I = 0x1a

.field public static final CONTENT_MEETING_INFO_COLUMN:I = 0x14

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0xb

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_SEARCH_INFO_COLUMN:I = 0x16

.field public static final CONTENT_REPLY_TO_COLUMN:I = 0x12

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x9

.field public static final CONTENT_SERVER_TIMESTAMP_COLUMN:I = 0x13

.field public static final CONTENT_SNIPPET_COLUMN:I = 0x15

.field public static final CONTENT_SUBJECT_COLUMN:I = 0x3

.field public static final CONTENT_SYNC_DATA_COLUMN:I = 0x18

.field public static final CONTENT_THREAD_TOPIC_COLUMN:I = 0x17

.field public static final CONTENT_TIMESTAMP_COLUMN:I = 0x2

.field public static final CONTENT_TO_LIST_COLUMN:I = 0xf

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI_LIMIT_1:Landroid/net/Uri; = null

.field public static DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "Message_Deletes"

.field public static final DRAFT_INFO_APPEND_REF_MESSAGE:I = 0x1000000

.field public static final DRAFT_INFO_QUOTE_POS_MASK:I = 0xffffff

.field public static final FLAG_FORWARDED:I = 0x80000

.field public static final FLAG_INCOMING_MEETING_CANCEL:I = 0x8

.field public static final FLAG_INCOMING_MEETING_INVITE:I = 0x4

.field public static final FLAG_INCOMING_MEETING_MASK:I = 0xc

.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x5

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_PARTIAL_COMPLETE:I = 0x3

.field public static final FLAG_LOADED_PARTIAL_FETCHING:I = 0x4

.field public static final FLAG_LOADED_SELECTION:Ljava/lang/String; = "flagLoaded IN (2,1,3,4)"

.field public static final FLAG_LOADED_UNKNOWN:I = 0x6

.field public static final FLAG_LOADED_UNLOADED:I = 0x0

.field public static final FLAG_NOT_INCLUDE_QUOTED_TEXT:I = 0x20000

.field public static final FLAG_OUTGOING_MEETING_ACCEPT:I = 0x40

.field public static final FLAG_OUTGOING_MEETING_CANCEL:I = 0x20

.field public static final FLAG_OUTGOING_MEETING_DECLINE:I = 0x80

.field public static final FLAG_OUTGOING_MEETING_INVITE:I = 0x10

.field public static final FLAG_OUTGOING_MEETING_MASK:I = 0x1f0

.field public static final FLAG_OUTGOING_MEETING_REQUEST_MASK:I = 0x30

.field public static final FLAG_OUTGOING_MEETING_TENTATIVE:I = 0x100

.field public static final FLAG_REPLIED_TO:I = 0x40000

.field public static final FLAG_SYNC_ADAPTER_MASK:I = 0x1fe00

.field public static final FLAG_SYNC_ADAPTER_SHIFT:I = 0x9

.field public static final FLAG_TYPE_FORWARD:I = 0x2

.field public static final FLAG_TYPE_MASK:I = 0x3

.field public static final FLAG_TYPE_ORIGINAL:I = 0x100000

.field public static final FLAG_TYPE_REPLY:I = 0x1

.field public static final FLAG_TYPE_REPLY_ALL:I = 0x200000

.field public static final ID_COLUMNS_ID_COLUMN:I = 0x0

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMNS_SYNC_SERVER_ID:I = 0x1

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final KEY_TIMESTAMP_DESC:Ljava/lang/String; = "timeStamp desc"

.field public static final LIST_ACCOUNT_KEY_COLUMN:I = 0xa

.field public static final LIST_ATTACHMENT_COLUMN:I = 0x7

.field public static final LIST_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final LIST_FAVORITE_COLUMN:I = 0x6

.field public static final LIST_FLAGS_COLUMN:I = 0x8

.field public static final LIST_ID_COLUMN:I = 0x0

.field public static final LIST_LOADED_COLUMN:I = 0x5

.field public static final LIST_MAILBOX_KEY_COLUMN:I = 0x9

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final LIST_READ_COLUMN:I = 0x4

.field public static final LIST_SERVER_ID_COLUMN:I = 0xb

.field public static final LIST_SNIPPET_COLUMN:I = 0xc

.field public static final LIST_SUBJECT_COLUMN:I = 0x3

.field public static final LIST_TIMESTAMP_COLUMN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_SELECTION:Ljava/lang/String; = "mailboxKey=?"

.field public static NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final NO_MESSAGE:J = -0x1L

.field public static final PER_ACCOUNT_FAVORITE_SELECTION:Ljava/lang/String; = "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

.field public static final PER_ACCOUNT_INBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

.field public static final PER_ACCOUNT_UNREAD_SELECTION:Ljava/lang/String; = "accountKey=? AND flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

.field public static final READ:I = 0x1

.field public static SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri; = null

.field public static SYNCED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Message"

.field public static final UNREAD:I = 0x0

.field public static UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "Message_Updates"


# instance fields
.field public mAccountKey:J

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mDraftInfo:I

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagRead:Z

.field public mFlagSeen:Z

.field public mFlags:I

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public transient mHtmlReply:Ljava/lang/String;

.field public transient mIntroText:Ljava/lang/String;

.field public mMailboxKey:J

.field public mMainMailboxKey:J

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field public mProtocolSearchInfo:Ljava/lang/String;

.field public transient mQuotedTextStartPos:I

.field public mReplyTo:Ljava/lang/String;

.field public mServerConversationId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public mSnippet:Ljava/lang/String;

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public mSyncData:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadTopic:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 666
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "protocolSearchInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "threadTopic"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "syncData"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "flagSeen"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mainMailboxKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 698
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "flagRead"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "snippet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 710
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 714
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    .line 719
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mailboxKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->MAILBOX_KEY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 900
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 787
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 788
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 789
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 790
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 791
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 792
    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 901
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 902
    return-void
.end method

.method public static buildMessageListSelection(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    const/16 v3, 0x3d

    .line 1151
    const-wide/16 v1, -0x2

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 1152
    const-string v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

    .line 1185
    :goto_0
    return-object v1

    .line 1154
    :cond_0
    const-wide/16 v1, -0x5

    cmp-long v1, p3, v1

    if-nez v1, :cond_1

    .line 1155
    const-string v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 3) AND flagLoaded IN (2,1,3,4)"

    goto :goto_0

    .line 1157
    :cond_1
    const-wide/16 v1, -0x6

    cmp-long v1, p3, v1

    if-nez v1, :cond_2

    .line 1158
    const-string v1, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 4)"

    goto :goto_0

    .line 1160
    :cond_2
    const-wide/16 v1, -0x3

    cmp-long v1, p3, v1

    if-nez v1, :cond_3

    .line 1161
    const-string v1, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4)"

    goto :goto_0

    .line 1165
    :cond_3
    const-wide/16 v1, -0x4

    cmp-long v1, p3, v1

    if-nez v1, :cond_5

    .line 1166
    const-wide/high16 v1, 0x1000000000000000L

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 1167
    const-string v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

    goto :goto_0

    .line 1170
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string v1, "accountKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1178
    .end local v0    # "selection":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .restart local v0    # "selection":Ljava/lang/StringBuilder;
    const-string v1, "mailboxKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1182
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    .line 1183
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagLoaded IN (2,1,3,4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1123
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFavoriteMessageCount(Landroid/content/Context;J)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 1130
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=? AND flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1,3,4)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKeyColumnLong(Landroid/content/Context;JLjava/lang/String;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1135
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {p0, v1, p1, p2, v2}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "columns":[Ljava/lang/String;
    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 1138
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1140
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public static initMessage()V
    .locals 2

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 623
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/messageBySelection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->SELECTED_MESSAGE_CONTENT_URI:Landroid/net/Uri;

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    .line 634
    return-void
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 939
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method public static updateHTMLContentForInlineAtts(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "htmlContent"    # Ljava/lang/String;
    .param p2, "msgId"    # J

    .prologue
    const/4 v8, 0x0

    .line 1198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-wide/16 v9, 0x1

    cmp-long v9, p2, v9

    if-gez v9, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-object v8

    .line 1200
    :cond_1
    const/4 v7, 0x0

    .line 1201
    .local v7, "update":Z
    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 1202
    .local v2, "attachments":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v0, v2

    .local v0, "arr$":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 1203
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1202
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1206
    :cond_2
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1207
    sget-object v9, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Found one inline att, but contentUri is null."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 1212
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\E\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, "contentIdRe":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " src=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1214
    .local v6, "srcContentUri":Ljava/lang/String;
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1215
    const/4 v7, 0x1

    goto :goto_2

    .line 1217
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3    # "contentIdRe":Ljava/lang/String;
    .end local v6    # "srcContentUri":Ljava/lang/String;
    :cond_4
    if-eqz v7, :cond_0

    move-object v8, p1

    goto :goto_0
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1052
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v9

    if-nez v9, :cond_a

    move v5, v7

    .line 1055
    .local v5, "isNew":Z
    :goto_0
    if-eqz v5, :cond_b

    .line 1056
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1062
    .local v1, "b":Landroid/content/ContentProviderOperation$Builder;
    :goto_1
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 1063
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1067
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v3, "cv":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1072
    const-string v7, "textContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    :cond_1
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1075
    const-string v7, "htmlContent"

    iget-object v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_2
    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 1078
    const-string v7, "sourceMessageKey"

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1080
    :cond_3
    iget v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    if-eqz v7, :cond_4

    .line 1081
    const-string v7, "quotedTextStartPos"

    iget v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mQuotedTextStartPos:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .line 1086
    .local v6, "messageBackValue":I
    invoke-virtual {v3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1087
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1089
    if-nez v5, :cond_5

    .line 1090
    const-string v7, "messageKey"

    iget-wide v8, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1092
    :cond_5
    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1094
    if-eqz v5, :cond_6

    .line 1095
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1096
    .local v2, "backValues":Landroid/content/ContentValues;
    const-string v7, "messageKey"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1100
    .end local v2    # "backValues":Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_7
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_d

    .line 1105
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1106
    .local v0, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v5, :cond_8

    .line 1107
    iget-wide v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1109
    :cond_8
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1111
    if-eqz v5, :cond_9

    .line 1112
    const-string v7, "messageKey"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1114
    :cond_9
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v0    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1    # "b":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isNew":Z
    .end local v6    # "messageBackValue":I
    :cond_a
    move v5, v8

    .line 1052
    goto/16 :goto_0

    .line 1058
    .restart local v5    # "isNew":Z
    :cond_b
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "_id=?"

    new-array v7, v7, [Ljava/lang/String;

    iget-wide v11, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .restart local v1    # "b":Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_1

    .line 1064
    :cond_c
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1065
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    goto/16 :goto_2

    .line 1117
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "messageBackValue":I
    :cond_d
    return-void
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 945
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 946
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 947
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 948
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 949
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 950
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 951
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    .line 952
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 953
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 954
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 955
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 956
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 957
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 958
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    .line 959
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 960
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 961
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    .line 962
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 963
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 964
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 965
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 966
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 967
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 968
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 969
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 970
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    .line 971
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    .line 972
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    .line 973
    return-void

    :cond_0
    move v0, v2

    .line 950
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 951
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 953
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 954
    goto/16 :goto_3
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 984
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v9

    if-nez v9, :cond_0

    move v1, v7

    .line 989
    .local v1, "doSave":Z
    :cond_0
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 991
    :cond_1
    if-eqz v1, :cond_3

    .line 992
    invoke-super {p0, p1}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 1044
    :cond_2
    :goto_0
    return-object v6

    .line 997
    :cond_3
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v9

    if-ne v9, v7, :cond_4

    .line 998
    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object v6, v8

    .line 1000
    goto :goto_0

    .line 1004
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v3, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 1008
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 1011
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_8

    .line 1012
    const/4 v7, 0x0

    aget-object v7, v5, v7

    iget-object v6, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1013
    .local v6, "u":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    .line 1014
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 1016
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1017
    iget-object v7, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1019
    .local v0, "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    add-int/lit8 v4, v2, 0x2

    .line 1021
    .local v4, "resultIndex":I
    array-length v7, v5

    if-ge v4, v7, :cond_7

    .line 1022
    aget-object v7, v5, v4

    iget-object v6, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1029
    :goto_2
    if-eqz v6, :cond_6

    .line 1030
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1032
    :cond_6
    iget-wide v9, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1025
    :cond_7
    const-string v7, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid index into ContentProviderResults: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    const/4 v6, 0x0

    goto :goto_2

    .end local v0    # "a":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2    # "i":I
    .end local v4    # "resultIndex":I
    .end local v6    # "u":Landroid/net/Uri;
    :cond_8
    move-object v6, v8

    .line 1037
    goto/16 :goto_0

    .line 1041
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v7

    :goto_3
    move-object v6, v8

    .line 1044
    goto/16 :goto_0

    .line 1039
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public setFlags(ZZ)V
    .locals 2
    .param p1, "quotedReply"    # Z
    .param p2, "quotedForward"    # Z

    .prologue
    .line 1222
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1223
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1224
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1228
    :cond_1
    return-void

    .line 1224
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 906
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 909
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v1, "timeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 911
    const-string v1, "subject"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v1, "flagRead"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    const-string v1, "flagSeen"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagSeen:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 914
    const-string v1, "flagLoaded"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    const-string v1, "flagFavorite"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 916
    const-string v1, "flagAttachment"

    iget-boolean v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 917
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v1, "syncServerId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v1, "syncServerTimeStamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 920
    const-string v1, "clientId"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDraftInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string v1, "messageId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v1, "mailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 923
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    const-string v1, "fromList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v1, "toList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v1, "ccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v1, "bccList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v1, "replyToList"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v1, "meetingInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v1, "snippet"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v1, "protocolSearchInfo"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v1, "threadTopic"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadTopic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v1, "syncData"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSyncData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v1, "mainMailboxKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMainMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    return-object v0
.end method
