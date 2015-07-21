.class public Lcom/android/bluetooth/map/BluetoothMapContent;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContent$1;,
        Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field private static final D:Z = true

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAIL_ACCOUNT_URI:Landroid/net/Uri;

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final EMAIL_BCC:I = 0x81

.field public static final EMAIL_BOX_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_BOX_URI:Landroid/net/Uri;

.field public static final EMAIL_CC:I = 0x82

.field public static final EMAIL_FROM:I = 0x89

.field public static final EMAIL_MESSAGE_URI:Landroid/net/Uri;

.field static final EMAIL_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_TO:I = 0x97

.field public static final EMAIL_TYPE:Ljava/lang/String; = "type"

.field public static final EMAIL_URI:Landroid/net/Uri;

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final MAILBOX_KEY:Ljava/lang/String; = "mailboxKey"

.field public static final MAP_MESSAGE_CHARSET_NATIVE:I = 0x0

.field public static final MAP_MESSAGE_CHARSET_UTF8:I = 0x1

.field private static final MASK_ATTACHMENT_SIZE:I = 0x400

.field private static final MASK_DATETIME:I = 0x2

.field private static final MASK_PRIORITY:I = 0x800

.field private static final MASK_PROTECTED:I = 0x4000

.field private static final MASK_READ:I = 0x1000

.field private static final MASK_RECEPTION_STATUS:I = 0x100

.field private static final MASK_RECIPIENT_ADDRESSING:I = 0x20

.field private static final MASK_RECIPIENT_NAME:I = 0x10

.field private static final MASK_REPLYTO_ADDRESSING:I = 0x8000

.field private static final MASK_SENDER_ADDRESSING:I = 0x8

.field private static final MASK_SENDER_NAME:I = 0x4

.field private static final MASK_SENT:I = 0x2000

.field private static final MASK_SIZE:I = 0x80

.field private static final MASK_SUBJECT:I = 0x1

.field private static final MASK_TEXT:I = 0x200

.field private static final MASK_TYPE:I = 0x40

.field public static final MMS_BCC:I = 0x81

.field public static final MMS_CC:I = 0x82

.field public static final MMS_FROM:I = 0x89

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field public static final MMS_TO:I = 0x97

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final SERVER_ID:Ljava/lang/String; = "serverId"

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContent"

.field private static final V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field public msgListingFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_URI:Landroid/net/Uri;

    .line 105
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 106
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "mailbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_BOX_URI:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_MESSAGE_URI:Landroid/net/Uri;

    .line 117
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "accountKey"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "emailAddress"

    aput-object v1, v0, v4

    const-string v1, "isDefault"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 126
    const/16 v0, 0x16

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

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "protocolSearchInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadTopic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 141
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

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 154
    const/16 v0, 0xc

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

    const-string v2, "st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingFolder:Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 184
    const-string v0, "BluetoothMapContent"

    const-string v1, "getContentResolver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method

.method private addSmsEntry()V
    .locals 5

    .prologue
    .line 189
    const-string v2, "BluetoothMapContent"

    const-string v3, "*** Adding dummy sms ***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v1, "mVal":Landroid/content/ContentValues;
    const-string v2, "address"

    const-string v3, "1234"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "body"

    const-string v3, "Hello!!!"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v2, "read"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 198
    .local v0, "mUri":Landroid/net/Uri;
    return-void
.end method

.method private buildAppParams()Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .locals 5

    .prologue
    .line 201
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 203
    .local v0, "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v2, 0x7fff

    .line 219
    .local v2, "paramMask":I
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 220
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 221
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    .line 222
    const-string v3, "20130101T000000"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    .line 223
    const-string v3, "20131230T000000"

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    .line 225
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 226
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :goto_0
    return-object v0

    .line 229
    .restart local v0    # "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "emailString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1752
    const-string v7, "\\\"?([^\"<]*?)\\\"?\\s*<(.*)>"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1755
    .local v4, "sEmailMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1756
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1757
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1758
    .local v2, "name":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1759
    .local v0, "address":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1760
    const-string v2, ""

    .line 1764
    :goto_0
    if-nez v0, :cond_2

    .line 1765
    const-string v0, ""

    .line 1781
    :goto_1
    const/4 v3, 0x0

    .line 1782
    .local v3, "output":Ljava/lang/String;
    const-string v7, "name"

    if-ne p1, v7, :cond_6

    .line 1783
    const-string v7, "\'"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1788
    :cond_0
    :goto_2
    return-object v3

    .line 1762
    .end local v3    # "output":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1767
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1771
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 1772
    .local v6, "tokens":[Landroid/text/util/Rfc822Token;
    array-length v7, v6

    if-lez v7, :cond_5

    .line 1773
    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1774
    .local v5, "tokenizedName":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1775
    .restart local v2    # "name":Ljava/lang/String;
    :goto_3
    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_1

    .line 1774
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_3

    .line 1777
    .end local v5    # "tokenizedName":Ljava/lang/String;
    :cond_5
    const-string v2, ""

    .line 1778
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "address":Ljava/lang/String;
    goto :goto_1

    .line 1785
    .end local v6    # "tokens":[Landroid/text/util/Rfc822Token;
    .restart local v3    # "output":Ljava/lang/String;
    :cond_6
    const-string v7, "address"

    if-ne p1, v7, :cond_0

    .line 1786
    move-object v3, v0

    goto :goto_2
.end method

.method public static decodeEncodedWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "checkEncoded"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x3f

    const/4 v8, -0x1

    .line 468
    if-eqz p0, :cond_1

    const-string v9, "=?"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 469
    const-string v8, "BluetoothMapContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Decode NotRequired"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .local v0, "begin":I
    .local v1, "decoded":Ljava/lang/String;
    .local v2, "e":Lorg/apache/commons/codec/DecoderException;
    .local v3, "end":I
    .local v4, "endScan":I
    .local v7, "qpDecode":Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_0
    :goto_0
    return-object p0

    .line 473
    .end local v0    # "begin":I
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v2    # "e":Lorg/apache/commons/codec/DecoderException;
    .end local v3    # "end":I
    .end local v4    # "endScan":I
    .end local v7    # "qpDecode":Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_1
    const-string v9, "=?"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 475
    .restart local v0    # "begin":I
    add-int/lit8 v4, v0, 0x2

    .line 476
    .restart local v4    # "endScan":I
    if-eq v0, v8, :cond_2

    .line 477
    add-int/lit8 v9, v4, 0x2

    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 478
    .local v5, "qm1":I
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 479
    .local v6, "qm2":I
    if-eq v6, v8, :cond_2

    .line 480
    add-int/lit8 v4, v6, 0x1

    .line 484
    .end local v5    # "qm1":I
    .end local v6    # "qm2":I
    :cond_2
    if-ne v0, v8, :cond_3

    move v3, v8

    .line 485
    .restart local v3    # "end":I
    :goto_1
    if-eq v3, v8, :cond_0

    .line 487
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 492
    new-instance v7, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    const-string v8, "UTF-8"

    invoke-direct {v7, v8}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v7    # "qpDecode":Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    const/4 v1, 0x0

    .line 495
    .restart local v1    # "decoded":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 500
    if-eqz v1, :cond_0

    move-object p0, v1

    .line 503
    goto :goto_0

    .line 484
    .end local v1    # "decoded":Ljava/lang/String;
    .end local v3    # "end":I
    .end local v7    # "qpDecode":Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    const-string v9, "?="

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 496
    .restart local v1    # "decoded":Ljava/lang/String;
    .restart local v3    # "end":I
    .restart local v7    # "qpDecode":Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :catch_0
    move-exception v2

    .line 497
    .restart local v2    # "e":Lorg/apache/commons/codec/DecoderException;
    const-string v8, "BluetoothMapContent"

    const-string v9, "decode exception"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1009
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    .line 1011
    .local v0, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1012
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1013
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1014
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1015
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1017
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1018
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1019
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1020
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1021
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1022
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1023
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setAttachmentSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1024
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1025
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1026
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1027
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1028
    return-object v0
.end method

.method private emailSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v1, 0x1

    .line 1681
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1682
    .local v0, "msgType":I
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailSelected, msgType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1691
    :cond_0
    :goto_0
    return v1

    .line 1687
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 1690
    const-string v1, "BluetoothMapContent"

    const-string v2, "Invalid Message Filter"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 20
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 1815
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractEmailAddresses with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    const-string v19, "content://com.android.email.provider/message"

    .line 1817
    .local v19, "urlEmail":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1819
    .local v3, "uriEmail":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 1820
    .local v18, "tempEmail":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1821
    .local v13, "nameComponent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1822
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1823
    const/16 v16, 0x0

    .line 1824
    .local v16, "senderName":Ljava/lang/String;
    const-string v2, "fromList"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 1825
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " senderName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v2, "\u0002"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1827
    const-string v2, "\u0002"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1828
    .local v17, "senderStr":[Ljava/lang/String;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v2, v0

    if-lez v2, :cond_1

    .line 1829
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1830
    .local v10, "emailComponent":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1832
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " senderStr[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " senderStr[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1836
    .local v9, "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_0

    move-object v13, v9

    .line 1837
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1838
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    .end local v9    # "contactsName":Ljava/lang/String;
    .end local v10    # "emailComponent":Ljava/lang/String;
    .end local v17    # "senderStr":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v15, 0x0

    .line 1851
    .local v15, "recipientName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1852
    .local v12, "multiRecepients":Ljava/lang/String;
    const-string v2, "toList"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1853
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " recipientName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    const-string v2, "\u0002"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1855
    const-string v2, "\u0002"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1856
    .local v14, "recepientStr":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v2, v14

    if-lez v2, :cond_3

    .line 1857
    const/4 v2, 0x1

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1858
    .restart local v10    # "emailComponent":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v14, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1860
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " recepientStr[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " recepientStr[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1864
    .restart local v9    # "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_2

    move-object v13, v9

    .line 1865
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1866
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    .end local v9    # "contactsName":Ljava/lang/String;
    .end local v10    # "emailComponent":Ljava/lang/String;
    .end local v12    # "multiRecepients":Ljava/lang/String;
    .end local v14    # "recepientStr":[Ljava/lang/String;
    .end local v15    # "recipientName":Ljava/lang/String;
    .end local v16    # "senderName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1841
    .restart local v16    # "senderName":Ljava/lang/String;
    :cond_4
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " senderStr is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    const-string v2, "name"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1843
    const-string v2, "address"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1844
    .restart local v10    # "emailComponent":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1845
    .restart local v9    # "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_5

    move-object v13, v9

    .line 1846
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1847
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1868
    .end local v9    # "contactsName":Ljava/lang/String;
    .end local v10    # "emailComponent":Ljava/lang/String;
    .restart local v12    # "multiRecepients":Ljava/lang/String;
    .restart local v15    # "recipientName":Ljava/lang/String;
    :cond_6
    const-string v2, "\u0001"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1869
    const/4 v2, 0x1

    const/16 v4, 0x3b

    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 1870
    if-eqz v12, :cond_3

    .line 1872
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Setting::M Recepient name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-direct {v11, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    .local v11, "emailId":Ljava/util/StringTokenizer;
    :cond_7
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1877
    const-string v2, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1878
    const-string v2, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1879
    .restart local v10    # "emailComponent":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1880
    .restart local v9    # "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_8

    move-object v13, v9

    .line 1881
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1883
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    .line 1886
    .end local v9    # "contactsName":Ljava/lang/String;
    .end local v10    # "emailComponent":Ljava/lang/String;
    .end local v11    # "emailId":Ljava/util/StringTokenizer;
    :cond_9
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1887
    const-string v2, ", \""

    const-string v4, "; \""

    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1888
    if-eqz v12, :cond_3

    .line 1890
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting::M2 Recepient name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-direct {v11, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    .restart local v11    # "emailId":Ljava/util/StringTokenizer;
    :cond_a
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1895
    const-string v2, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1896
    const-string v2, "address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1897
    .restart local v10    # "emailComponent":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1898
    .restart local v9    # "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_b

    move-object v13, v9

    .line 1899
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1901
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    .line 1905
    .end local v9    # "contactsName":Ljava/lang/String;
    .end local v10    # "emailComponent":Ljava/lang/String;
    .end local v11    # "emailId":Ljava/util/StringTokenizer;
    :cond_c
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Setting ::Single Recepient name :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const-string v2, "name"

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1907
    const-string v2, "address"

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->deTokenizeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1908
    .restart local v10    # "emailComponent":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1909
    .restart local v9    # "contactsName":Ljava/lang/String;
    if-eqz v9, :cond_d

    move-object v13, v9

    .line 1910
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13, v10, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1911
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 18
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 1959
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractEmailParts with id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessagekey(J)Ljava/lang/String;

    move-result-object v5

    .line 1961
    .local v5, "where":Ljava/lang/String;
    const-string v11, ""

    .line 1962
    .local v11, "emailBody":Ljava/lang/String;
    const-string v2, "content://com.android.email.provider/body"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1964
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1970
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1971
    const-string v2, "BluetoothMapContent"

    const-string v4, "cursor not null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1973
    const-string v2, "textContent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1974
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1975
    :cond_0
    const-string v2, "htmlContent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1976
    .local v12, "msgBody":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1977
    const-string v2, "(?s)(<title>)(.*?)(</title>)"

    const-string v4, ""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1978
    const-string v2, "(?s)(<style type=\"text/css\".*?>)(.*?)(</style>)"

    const-string v4, ""

    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1979
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 1980
    .local v13, "msgText":Ljava/lang/CharSequence;
    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1981
    const-string v2, "(?s)(<!--)(.*?)(-->)"

    const-string v4, ""

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1984
    const-string v2, "(?s)(\\r)"

    const-string v4, ""

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1985
    const-string v2, "(?s)(\\n)"

    const-string v4, "\r\n"

    invoke-virtual {v11, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1987
    .end local v13    # "msgText":Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V

    .line 1990
    .end local v12    # "msgBody":Ljava/lang/String;
    :cond_2
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1991
    .local v16, "partId":Ljava/lang/Long;
    const-string v9, "Content-Type: text/plain; charset=\"UTF-8\""

    .line 1992
    .local v9, "contentType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1993
    .local v14, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1995
    .local v17, "text":Ljava/lang/String;
    const-string v2, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     _id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n     ct : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n     partname : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v15

    .line 2000
    .local v15, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iput-object v9, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 2001
    iput-object v14, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    .line 2004
    if-eqz v11, :cond_3

    .line 2005
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v11, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2006
    const-string v2, "utf-8"

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    .end local v9    # "contentType":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .end local v16    # "partId":Ljava/lang/Long;
    .end local v17    # "text":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->updateCharset()V

    .line 2021
    const-string v2, "8BIT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEncoding(Ljava/lang/String;)V

    .line 2022
    return-void

    .line 2008
    .restart local v9    # "contentType":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .restart local v16    # "partId":Ljava/lang/Long;
    .restart local v17    # "text":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2009
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string v2, "BluetoothMapContent"

    const-string v4, "extractEmailParts"

    invoke-static {v2, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2010
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2011
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2016
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    throw v2

    .line 2012
    :catch_1
    move-exception v10

    .line 2013
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "BluetoothMapContent"

    const-string v4, "extractEmailParts"

    invoke-static {v2, v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2014
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2015
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 2502
    const/4 v2, 0x0

    .line 2503
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2505
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2506
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2512
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    :cond_0
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2515
    .local v6, "address":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2516
    .local v8, "type":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2535
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2537
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 2518
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/Integer;
    :sswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 2519
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 2523
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2526
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 2527
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2530
    :sswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v6, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 2531
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addBcc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2516
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_3
        0x82 -> :sswitch_2
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V
    .locals 23
    .param p1, "id"    # J
    .param p3, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .prologue
    .line 2582
    const/4 v4, 0x0

    .line 2583
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "content://mms/%d/part"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 2585
    .local v21, "uriStr":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2587
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2593
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2595
    :cond_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 2596
    .local v19, "partId":Ljava/lang/Long;
    const-string v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2597
    .local v13, "contentType":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2598
    .local v17, "name":Ljava/lang/String;
    const-string v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2599
    .local v10, "charset":Ljava/lang/String;
    const-string v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2600
    .local v16, "filename":Ljava/lang/String;
    const-string v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2601
    .local v20, "text":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 2602
    .local v15, "fd":Ljava/lang/Integer;
    const-string v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2603
    .local v11, "cid":Ljava/lang/String;
    const-string v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2604
    .local v12, "cl":Ljava/lang/String;
    const-string v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2606
    .local v9, "cdisp":Ljava/lang/String;
    const-string v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     ct : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     partname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     charset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     fd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cdisp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v18

    .line 2618
    .local v18, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 2619
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    .line 2620
    move-object/from16 v0, v18

    iput-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    .line 2621
    move-object/from16 v0, v18

    iput-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    .line 2622
    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    .line 2625
    if-eqz v20, :cond_3

    .line 2626
    :try_start_0
    const-string v2, "UTF-8"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2627
    const-string v2, "utf-8"

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2644
    :cond_1
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->fileName:Ljava/lang/String;

    .line 2645
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2647
    .end local v9    # "cdisp":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v12    # "cl":Ljava/lang/String;
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v15    # "fd":Ljava/lang/Integer;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .end local v19    # "partId":Ljava/lang/Long;
    .end local v20    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->updateCharset()V

    .line 2648
    return-void

    .line 2630
    .restart local v9    # "cdisp":Ljava/lang/String;
    .restart local v10    # "charset":Ljava/lang/String;
    .restart local v11    # "cid":Ljava/lang/String;
    .restart local v12    # "cl":Ljava/lang/String;
    .restart local v13    # "contentType":Ljava/lang/String;
    .restart local v15    # "fd":Ljava/lang/Integer;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .restart local v19    # "partId":Ljava/lang/Long;
    .restart local v20    # "text":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->readMmsDataPart(J)[B

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2631
    if-eqz v10, :cond_1

    .line 2632
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2634
    :catch_0
    move-exception v14

    .line 2635
    .local v14, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v2, "BluetoothMapContent"

    const-string v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2636
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2637
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2642
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    throw v2

    .line 2638
    :catch_1
    move-exception v14

    .line 2639
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v2, "BluetoothMapContent"

    const-string v6, "extractMmsParts"

    invoke-static {v2, v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 2641
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 10
    .param p0, "r"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 1055
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    .local v1, "uriAddress":Landroid/net/Uri;
    const/4 v6, 0x0

    .local v6, "addr":Ljava/lang/String;
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    .line 1059
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1061
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1065
    :cond_0
    if-eqz v7, :cond_1

    .line 1066
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1068
    :cond_1
    return-object v6
.end method

.method private getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1032
    const/4 v7, 0x0

    .line 1034
    .local v7, "name":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v8

    .line 1038
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "in_visible_group=1"

    .line 1039
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "display_name ASC"

    .line 1041
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1043
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_0

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1045
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1048
    :cond_0
    if-eqz v6, :cond_1

    .line 1049
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1051
    :cond_1
    return-object v7
.end method

.method private getContainingFolderEmail(I)Ljava/lang/String;
    .locals 8
    .param p1, "folderId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1727
    const/4 v7, 0x0

    .line 1728
    .local v7, "folderName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, "whereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1732
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1733
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1734
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1735
    const-string v0, "displayName"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1737
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1739
    :cond_1
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContainingFolderEmail returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return-object v7
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "threadId"    # I

    .prologue
    .line 2326
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2327
    const-string v0, "deleted"

    .line 2341
    :goto_0
    return-object v0

    .line 2329
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2341
    const-string v0, ""

    goto :goto_0

    .line 2331
    :pswitch_0
    const-string v0, "inbox"

    goto :goto_0

    .line 2333
    :pswitch_1
    const-string v0, "sent"

    goto :goto_0

    .line 2335
    :pswitch_2
    const-string v0, "draft"

    goto :goto_0

    .line 2339
    :pswitch_3
    const-string v0, "outbox"

    goto :goto_0

    .line 2329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getMessageSmsRecipientAddress(I)Ljava/lang/String;
    .locals 20
    .param p1, "threadId"    # I

    .prologue
    .line 392
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "recipient_ids"

    aput-object v5, v3, v1

    .line 398
    .local v3, "RECIPIENT_ID_PROJECTION":[Ljava/lang/String;
    const-string v1, "content://mms-sms/canonical-addresses"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 399
    .local v19, "sAllCanonical":Landroid/net/Uri;
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v5, "simple"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 400
    .local v2, "sAllThreadsUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 401
    .local v12, "cr":Landroid/database/Cursor;
    const-string v16, ""

    .line 402
    .local v16, "recipientAddress":Ljava/lang/String;
    const/16 v17, 0x0

    .line 403
    .local v17, "recipientIds":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "whereClause":Ljava/lang/String;
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whereClause is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 407
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 409
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recipientIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "whrClus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    if-eqz v12, :cond_1

    .line 412
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 413
    const/4 v12, 0x0

    .line 416
    :cond_1
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recipientIds with spaces: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v17, :cond_7

    .line 419
    const/16 v18, 0x0

    .line 420
    .local v18, "recipients":[Ljava/lang/String;
    const-string v4, ""

    .line 421
    const-string v1, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 422
    move-object/from16 v11, v18

    .local v11, "arr$":[Ljava/lang/String;
    array-length v15, v11

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_3

    aget-object v14, v11, v13

    .line 423
    .local v14, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 427
    .end local v14    # "id":Ljava/lang/String;
    :cond_3
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whereClause is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v19

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 429
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 432
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 434
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "address"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 435
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    :cond_6
    if-eqz v12, :cond_7

    .line 438
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 442
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "recipients":[Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final recipientAddress : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-object v16
.end method

.method private getNameFromEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1792
    const/4 v6, 0x0

    .line 1795
    .local v6, "contactName":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1798
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const-string v0, "display_name"

    aput-object v0, v2, v8

    .line 1799
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "in_visible_group=1"

    .line 1800
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "_id ASC"

    .line 1803
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1804
    .local v7, "p":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_0

    .line 1806
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1807
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1808
    const-string v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone book lookup resolved "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1811
    return-object v6
.end method

.method private getQueryWithMailBoxKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1280
    const-string v0, "BluetoothMapContent"

    const-string v3, "Inside getQueryWithMailBoxKey "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string v8, "mailboxKey = -1"

    .line 1283
    .local v8, "query":Ljava/lang/String;
    const-string v0, "content://com.android.email.provider/mailbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1284
    .local v1, "uri":Landroid/net/Uri;
    if-nez p1, :cond_0

    .line 1304
    :goto_0
    return-object v2

    .line 1287
    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    const-string v0, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(accountKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND (UPPER(displayName) = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1293
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1294
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1296
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1297
    .local v7, "folderId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1301
    .end local v7    # "folderId":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1303
    :cond_3
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 1304
    goto/16 :goto_0
.end method

.method private getTextPartsEmail(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 933
    const-string v8, ""

    .line 934
    .local v8, "text":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 935
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/part"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 936
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 937
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 940
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    :cond_0
    const-string v0, "ct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 943
    .local v7, "ct":Ljava/lang/String;
    const-string v0, "text/plain"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "text"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 946
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    .end local v7    # "ct":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 949
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 951
    :cond_3
    return-object v8
.end method

.method private getTextPartsMms(J)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 910
    const-string v8, ""

    .line 911
    .local v8, "text":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 912
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/part"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 913
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 914
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 917
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    :cond_0
    const-string v0, "ct"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 920
    .local v7, "ct":Ljava/lang/String;
    const-string v0, "text/plain"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "text"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 923
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    .end local v7    # "ct":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 928
    :cond_3
    return-object v8
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1271
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x1

    .line 1274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1250
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "orig":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1252
    const-string v2, "*"

    const-string v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_0

    .line 1255
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1267
    .local v1, "res":Z
    :goto_0
    return v1

    .line 1256
    .end local v1    # "res":Z
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1257
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1258
    .end local v1    # "res":Z
    :cond_1
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1259
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorEmail(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1261
    .end local v1    # "res":Z
    :cond_2
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1265
    .end local v1    # "res":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorEmail(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 1171
    const/4 v2, 0x0

    .line 1173
    .local v2, "res":Z
    const-string v3, "displayName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1174
    .local v0, "displayNameIndex":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1177
    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "match originator name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v2, 0x1

    .line 1184
    :cond_0
    :goto_0
    return v2

    .line 1181
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 1189
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1190
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x89

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 1191
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1192
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1193
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match originator phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v4, 0x1

    .line 1207
    .local v4, "res":Z
    :goto_0
    return v4

    .line 1196
    .end local v4    # "res":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1198
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match originator name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1201
    .end local v4    # "res":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1205
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "orig"    # Ljava/lang/String;

    .prologue
    .line 1212
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1213
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 1214
    const-string v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1215
    .local v2, "phone":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1216
    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1217
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match originator phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/4 v3, 0x1

    .line 1245
    .local v3, "res":Z
    :goto_0
    return v3

    .line 1220
    .end local v3    # "res":Z
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1222
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match originator name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1225
    .end local v3    # "res":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1229
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1233
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_3
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 1234
    .restart local v2    # "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 1235
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1236
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match originator phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1238
    .end local v3    # "res":Z
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1239
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match originator name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1242
    .end local v3    # "res":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1150
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "recip":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1152
    const-string v2, "*"

    const-string v3, ".*"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_0

    .line 1155
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1167
    .local v1, "res":Z
    :goto_0
    return v1

    .line 1156
    .end local v1    # "res":Z
    :cond_0
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1157
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1158
    .end local v1    # "res":Z
    :cond_1
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1159
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientEmail(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v1

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1161
    .end local v1    # "res":Z
    :cond_2
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown msg type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_0

    .line 1165
    .end local v1    # "res":Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientEmail(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 1072
    const/4 v1, 0x0

    .line 1073
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 1074
    .local v0, "name":Ljava/lang/String;
    const-string v3, "toList"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1075
    .local v2, "toIndex":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1078
    invoke-virtual {v0, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "match recipient name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v1, 0x1

    .line 1085
    :cond_0
    :goto_0
    return v1

    .line 1082
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 1089
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1090
    .local v0, "id":J
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v6, 0x97

    invoke-static {v5, v0, v1, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v3

    .line 1091
    .local v3, "phone":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1092
    invoke-virtual {v3, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match recipient phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v4, 0x1

    .line 1107
    .local v4, "res":Z
    :goto_0
    return v4

    .line 1096
    .end local v4    # "res":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1098
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match recipient name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v4, 0x1

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1101
    .end local v4    # "res":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0

    .line 1105
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "res":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "res":Z
    goto :goto_0
.end method

.method private matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "recip"    # Ljava/lang/String;

    .prologue
    .line 1112
    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1113
    .local v0, "msgType":I
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 1114
    iget-object v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 1115
    .local v2, "phone":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 1116
    .local v1, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match recipient phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v3, 0x1

    .line 1145
    .end local v1    # "name":Ljava/lang/String;
    .local v3, "res":Z
    :goto_0
    return v3

    .line 1119
    .end local v3    # "res":Z
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match recipient name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1123
    .end local v3    # "res":Z
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1127
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_2
    const-string v4, "address"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .restart local v2    # "phone":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1129
    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1130
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match recipient phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto :goto_0

    .line 1133
    .end local v3    # "res":Z
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1134
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1135
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match recipient name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v3, 0x1

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1138
    .end local v3    # "res":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0

    .line 1142
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "res":Z
    goto/16 :goto_0
.end method

.method private mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 3
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v1, 0x1

    .line 1629
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1631
    .local v0, "msgType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return v1

    .line 1634
    :cond_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_0

    .line 1637
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printEmail(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1697
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printEmail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "displayName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subject"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagRead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagRead"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagAttachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flagAttachment"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "syncServerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "syncServerId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clientId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clientId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "messageId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "messageId"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mailboxKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mailboxKey"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountKey"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fromList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fromList"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "toList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "toList"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ccList"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bccList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bccList"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "replyToList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "replyToList"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "meetingInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "meetingInfo"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "snippet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "snippet"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "protocolSearchInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "protocolSearchInfo"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "threadTopic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "threadTopic"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    return-void
.end method

.method private printMms(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 246
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printMms _id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sub"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text_only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text_only"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date_sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date_sent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg_box"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg_box"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "st"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method private printMmsAddr(J)V
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "content://mms/%d/addr"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v5, v10

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, "uriStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 264
    .local v1, "uriAddress":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 270
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    const-string v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "add":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 274
    .local v8, "type":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x97

    if-ne v0, v4, :cond_2

    .line 275
    const-string v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   recipient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    .end local v6    # "add":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 276
    .restart local v6    # "add":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x89

    if-ne v0, v4, :cond_3

    .line 277
    const-string v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   originator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_3
    const-string v0, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   address other: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printMmsPartImage(J)V
    .locals 10
    .param p1, "partid"    # J

    .prologue
    .line 287
    const-string v6, "content://mms/part/%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "uriStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 290
    .local v4, "uriAddress":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 291
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 294
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 296
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 297
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v0    # "ch":I
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 299
    .restart local v0    # "ch":I
    :cond_0
    :try_start_1
    const-string v6, "BluetoothMapContent"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private printMmsParts(J)V
    .locals 21
    .param p1, "id"    # J

    .prologue
    .line 308
    const/4 v4, 0x0

    .line 309
    .local v4, "projection":[Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 310
    .local v5, "selection":Ljava/lang/String;
    const-string v2, "content://mms/%d/part"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 311
    .local v19, "uriStr":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 312
    .local v3, "uriAddress":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 318
    .local v8, "c":Landroid/database/Cursor;
    const-string v2, "BluetoothMapContent"

    const-string v6, "   parts:"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    :cond_0
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 322
    .local v17, "partid":Ljava/lang/Long;
    const-string v2, "ct"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "ct":Ljava/lang/String;
    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "name":Ljava/lang/String;
    const-string v2, "chset"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, "charset":Ljava/lang/String;
    const-string v2, "fn"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, "filename":Ljava/lang/String;
    const-string v2, "text"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 327
    .local v18, "text":Ljava/lang/String;
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 328
    .local v14, "fd":Ljava/lang/Integer;
    const-string v2, "cid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, "cid":Ljava/lang/String;
    const-string v2, "cl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "cl":Ljava/lang/String;
    const-string v2, "cd"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "cdisp":Ljava/lang/String;
    const-string v2, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     _id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     ct : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     partname : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     charset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     filename : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     fd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cl : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n     cdisp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    .end local v9    # "cdisp":Ljava/lang/String;
    .end local v10    # "charset":Ljava/lang/String;
    .end local v11    # "cid":Ljava/lang/String;
    .end local v12    # "cl":Ljava/lang/String;
    .end local v13    # "ct":Ljava/lang/String;
    .end local v14    # "fd":Ljava/lang/Integer;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "partid":Ljava/lang/Long;
    .end local v18    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private printSms(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 236
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "body":Ljava/lang/String;
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printSms _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "thread_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "address"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private readEmailDataPart(J)[B
    .locals 13
    .param p1, "partid"    # J

    .prologue
    const/4 v12, 0x0

    .line 1923
    const-string v9, "content://mms/part/%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1924
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1925
    .local v7, "uriAddress":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1926
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1927
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    .line 1928
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 1929
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 1932
    .local v6, "retVal":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1933
    const/4 v4, 0x0

    .line 1934
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 1935
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1938
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 1940
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v9, "BluetoothMapContent"

    const-string v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1943
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1944
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1948
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 1937
    .restart local v4    # "len":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 1943
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1944
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1945
    .end local v4    # "len":I
    :catch_1
    move-exception v9

    goto :goto_1

    .line 1942
    :catchall_0
    move-exception v9

    .line 1943
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1944
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1942
    :goto_2
    throw v9

    .line 1945
    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method private readMmsDataPart(J)[B
    .locals 13
    .param p1, "partid"    # J

    .prologue
    const/4 v12, 0x0

    .line 2545
    const-string v9, "content://mms/part/%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2546
    .local v8, "uriStr":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2547
    .local v7, "uriAddress":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 2548
    .local v3, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2549
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    .line 2550
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 2551
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 2554
    .local v6, "retVal":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2555
    const/4 v4, 0x0

    .line 2556
    .local v4, "len":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 2557
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2560
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 2562
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v9, "BluetoothMapContent"

    const-string v10, "Error reading part data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2565
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2566
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2570
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 2559
    .restart local v4    # "len":I
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 2565
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2566
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2567
    .end local v4    # "len":I
    :catch_1
    move-exception v9

    goto :goto_1

    .line 2564
    :catchall_0
    move-exception v9

    .line 2565
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2566
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2564
    :goto_2
    throw v9

    .line 2567
    :catch_2
    move-exception v10

    goto :goto_2
.end method

.method private setAttachmentSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 590
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v10, 0x400

    and-long/2addr v4, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_1

    .line 591
    const/4 v9, 0x0

    .line 592
    .local v9, "size":I
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 593
    const-string v0, "m_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 609
    :cond_0
    :goto_0
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAttachmentSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-virtual {p1, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    .line 612
    .end local v9    # "size":I
    :cond_1
    return-void

    .line 594
    .restart local v9    # "size":I
    :cond_2
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 595
    const-string v0, "content://com.android.email.provider/attachment"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 596
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 597
    .local v7, "msgId":J
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessagekey(J)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "size"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 600
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 603
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 605
    :cond_4
    if-eqz v6, :cond_0

    .line 606
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 883
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 884
    const-wide/16 v0, 0x0

    .line 885
    .local v0, "date":J
    const/4 v2, 0x0

    .line 887
    .local v2, "timeStamp":I
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v4, :cond_1

    .line 888
    const-string v4, "date"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 905
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    .line 907
    .end local v0    # "date":J
    .end local v2    # "timeStamp":I
    :cond_0
    return-void

    .line 889
    .restart local v0    # "date":J
    .restart local v2    # "timeStamp":I
    :cond_1
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 892
    const-string v4, "date"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    goto :goto_0

    .line 901
    :cond_2
    const-string v4, "timeStamp"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 902
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 903
    .local v3, "timestamp":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 4
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1642
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    .line 1644
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 1645
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    .line 1646
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phone alpha tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_0
    return-void
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x1

    .line 990
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 991
    .local v0, "handle":J
    const/4 v2, 0x0

    .line 992
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_2

    .line 993
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    if-ne v3, v4, :cond_1

    .line 994
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 1003
    :cond_0
    :goto_0
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1005
    return-void

    .line 995
    :cond_1
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 996
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 998
    :cond_2
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v4, :cond_3

    .line 999
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 1001
    :cond_3
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 567
    const-string v1, "no"

    .line 568
    .local v1, "priority":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x800

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "pri":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 571
    const-string v2, "pri"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 573
    :cond_0
    const/16 v2, 0x82

    if-ne v0, v2, :cond_1

    .line 574
    const-string v1, "yes"

    .line 576
    :cond_1
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPriority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    .line 579
    .end local v0    # "pri":I
    :cond_2
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 508
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 509
    const-string v0, "no"

    .line 510
    .local v0, "protect":Ljava/lang/String;
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProtected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    .line 513
    .end local v0    # "protect":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 7
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v2, 0x1

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "read":I
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_0

    .line 549
    const-string v3, "read"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 555
    :goto_0
    const/4 v1, 0x0

    .line 556
    .local v1, "setread":Ljava/lang/String;
    if-ne v0, v2, :cond_2

    .line 557
    const-string v1, "yes"

    .line 561
    :goto_1
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(Ljava/lang/String;Z)V

    .line 563
    return-void

    .line 550
    .end local v1    # "setread":Ljava/lang/String;
    :cond_0
    iget v3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v2, :cond_1

    .line 551
    const-string v3, "read"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 553
    :cond_1
    const-string v3, "flagRead"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 559
    .restart local v1    # "setread":Ljava/lang/String;
    :cond_2
    const-string v1, "no"

    goto :goto_1

    .line 562
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 643
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x100

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 644
    const-string v0, "complete"

    .line 645
    .local v0, "status":Ljava/lang/String;
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReceptionStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    .line 648
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 12
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 706
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v8

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 707
    const/4 v0, 0x0

    .line 708
    .local v0, "address":Ljava/lang/String;
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v8, :cond_3

    .line 709
    const-string v8, "type"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 710
    .local v3, "msgType":I
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 711
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    .line 715
    :goto_0
    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingFolder:Ljava/lang/String;

    const-string v9, "draft"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 716
    const-string v8, "thread_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 717
    .local v5, "threadIdInd":I
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "threadIdStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessageSmsRecipientAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    const-string v8, "BluetoothMapContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "threadId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " adress:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v3    # "msgType":I
    .end local v5    # "threadIdInd":I
    .end local v6    # "threadIdStr":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, "BluetoothMapContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setRecipientAddressing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    .line 744
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 713
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "msgType":I
    :cond_2
    const-string v8, "address"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 721
    .end local v3    # "msgType":I
    :cond_3
    iget v8, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 722
    const-string v8, "_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 723
    .local v1, "id":J
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v9, 0x97

    invoke-static {v8, v1, v2, v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    .line 724
    goto :goto_1

    .line 725
    .end local v1    # "id":J
    :cond_4
    const-string v8, "toList"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 726
    .local v7, "toIndex":I
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_5

    const-string v8, "\u0002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 728
    const-string v8, "\u0002"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "recepientAddrStr":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    .line 731
    const-string v8, "BluetoothMapContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ::Recepient addressing split String 0:: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "::Recepient addressing split String 1:: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    goto :goto_2

    .line 736
    .end local v4    # "recepientAddrStr":[Ljava/lang/String;
    :cond_5
    const-string v8, "BluetoothMapContent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setRecipientAddressing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 14
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 748
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v10

    const-wide/16 v12, 0x10

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 749
    const/4 v5, 0x0

    .line 750
    .local v5, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 751
    .local v1, "firstRecipient":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v10, :cond_5

    .line 752
    const-string v10, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 753
    .local v4, "msgType":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_3

    .line 754
    const-string v10, "address"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, "phone":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 759
    .end local v6    # "phone":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingFolder:Ljava/lang/String;

    const-string v11, "draft"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 760
    const-string v10, "thread_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 761
    .local v7, "threadIdInd":I
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "threadIdStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessageSmsRecipientAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 763
    const-string v10, "BluetoothMapContent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "threadId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " address:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-eqz v1, :cond_1

    .line 766
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 767
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    .line 771
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 784
    .end local v4    # "msgType":I
    .end local v7    # "threadIdInd":I
    .end local v8    # "threadIdStr":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v10, "BluetoothMapContent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setRecipientName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-virtual {p1, v5}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    .line 787
    .end local v1    # "firstRecipient":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 757
    .restart local v1    # "firstRecipient":Ljava/lang/String;
    .restart local v4    # "msgType":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 768
    .restart local v7    # "threadIdInd":I
    .restart local v8    # "threadIdStr":Ljava/lang/String;
    :cond_4
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 769
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    goto :goto_1

    .line 775
    .end local v4    # "msgType":I
    .end local v7    # "threadIdInd":I
    .end local v8    # "threadIdStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 776
    const-string v10, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 777
    .local v2, "id":J
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v11, 0x97

    invoke-static {v10, v2, v3, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v6

    .line 778
    .restart local v6    # "phone":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 779
    goto :goto_2

    .line 780
    .end local v2    # "id":J
    .end local v6    # "phone":Ljava/lang/String;
    :cond_6
    const-string v10, "toList"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 781
    .local v9, "toIndex":I
    const-string v10, "BluetoothMapContent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setRecipientName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method private setReplytoAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "address":Ljava/lang/String;
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 793
    const-string v2, "replyToList"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 794
    .local v1, "replyToInd":I
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setReplytoAddressing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    .end local v1    # "replyToInd":I
    :cond_0
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setReplytoAddressing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReplytoAddressing(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 803
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "address":Ljava/lang/String;
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v6, :cond_2

    .line 806
    const-string v6, "type"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 807
    .local v4, "msgType":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 808
    const-string v6, "address"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .end local v4    # "msgType":I
    :goto_0
    const-string v6, "BluetoothMapContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSenderAddressing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;)V

    .line 838
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 810
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v4    # "msgType":I
    :cond_1
    iget-object v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    goto :goto_0

    .line 812
    .end local v4    # "msgType":I
    :cond_2
    iget v6, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 813
    const-string v6, "_id"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 814
    .local v2, "id":J
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v7, 0x89

    invoke-static {v6, v2, v3, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v0

    .line 815
    goto :goto_0

    .line 816
    .end local v2    # "id":J
    :cond_3
    const-string v6, "fromList"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 817
    .local v1, "fromIndex":I
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    .line 819
    const-string v6, "\u0002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 820
    const-string v6, "\u0002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 821
    .local v5, "senderAddrStr":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 823
    const-string v6, "BluetoothMapContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ::Sender Addressing split String 0:: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "::Sender Addressing split String 1:: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setEmailSenderAddressing(Ljava/lang/String;)V

    goto :goto_1

    .line 829
    .end local v5    # "senderAddrStr":[Ljava/lang/String;
    :cond_4
    const-string v6, "BluetoothMapContent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSenderAddressing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setEmailSenderAddressing(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 11
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 842
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v7

    const-wide/16 v9, 0x4

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 843
    const/4 v4, 0x0

    .line 844
    .local v4, "name":Ljava/lang/String;
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v7, :cond_3

    .line 845
    const-string v7, "type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 846
    .local v3, "msgType":I
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 847
    const-string v7, "address"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 848
    .local v5, "phone":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 876
    .end local v3    # "msgType":I
    .end local v5    # "phone":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v7, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSenderName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p1, v4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    .line 879
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 850
    .restart local v3    # "msgType":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    iget-object v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    goto :goto_0

    .line 852
    .end local v3    # "msgType":I
    :cond_3
    iget v7, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 853
    const-string v7, "_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 854
    .local v1, "id":J
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v8, 0x89

    invoke-static {v7, v1, v2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object v5

    .line 855
    .restart local v5    # "phone":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 856
    goto :goto_0

    .line 857
    .end local v1    # "id":J
    .end local v5    # "phone":Ljava/lang/String;
    :cond_4
    const-string v7, "displayName"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 858
    .local v0, "displayNameIndex":I
    const-string v7, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSenderName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 860
    if-eqz v4, :cond_5

    const-string v7, "\u0002"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 861
    const-string v7, "\u0002"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "senderStr":[Ljava/lang/String;
    if-eqz v6, :cond_5

    array-length v7, v6

    if-lez v7, :cond_5

    .line 864
    const-string v7, "BluetoothMapContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ::Sender name split String 0:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::Sender name split String 1:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 870
    .end local v6    # "senderStr":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    .line 871
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->decodeEncodedWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 872
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "sent":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x2000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "msgType":I
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v2, :cond_1

    .line 521
    const-string v2, "type"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 535
    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 536
    const-string v1, "yes"

    .line 540
    :goto_1
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    .line 543
    .end local v0    # "msgType":I
    :cond_0
    :goto_2
    return-void

    .line 522
    .restart local v0    # "msgType":I
    :cond_1
    iget v2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 523
    const-string v2, "msg_box"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    .line 525
    :cond_2
    const-string v2, "mailboxKey"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 526
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 527
    const-string v1, "yes"

    .line 531
    :goto_3
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    goto :goto_2

    .line 529
    :cond_3
    const-string v1, "no"

    goto :goto_3

    .line 538
    :cond_4
    const-string v1, "no"

    goto :goto_1
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 14
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 652
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v12, 0x80

    and-long/2addr v5, v12

    const-wide/16 v12, 0x0

    cmp-long v1, v5, v12

    if-eqz v1, :cond_1

    .line 653
    const/4 v10, 0x0

    .line 654
    .local v10, "size":I
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_2

    .line 655
    const-string v1, "body"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, "subject":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    .line 679
    .end local v11    # "subject":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v1, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {p1, v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    .line 682
    .end local v10    # "size":I
    :cond_1
    return-void

    .line 657
    .restart local v10    # "size":I
    :cond_2
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 658
    const-string v1, "m_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_0

    .line 660
    :cond_3
    const-string v1, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 661
    .local v8, "msgId":J
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "LENGTH(textContent)"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string v5, "LENGTH(htmlContent)"

    aput-object v5, v3, v1

    .line 663
    .local v3, "EMAIL_MSGSIZE_PROJECTION":[Ljava/lang/String;
    const-string v1, "content://com.android.email.provider/body"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 664
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessagekey(J)Ljava/lang/String;

    move-result-object v4

    .line 665
    .local v4, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 667
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 669
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 670
    const/4 v1, -0x1

    if-eq v10, v1, :cond_4

    if-nez v10, :cond_5

    .line 671
    :cond_4
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 675
    :cond_5
    if-eqz v7, :cond_0

    .line 676
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 956
    const-string v3, ""

    .line 957
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    .line 958
    .local v2, "subLength":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 959
    const/16 v2, 0x100

    .line 961
    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 962
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v4, :cond_4

    .line 963
    const-string v4, "body"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 979
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 980
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 983
    :cond_2
    const-string v4, "BluetoothMapContent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSubject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p1, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    .line 986
    :cond_3
    return-void

    .line 964
    :cond_4
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 965
    const-string v4, "sub"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 966
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 968
    :cond_5
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 969
    .local v0, "id":J
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(J)Ljava/lang/String;

    move-result-object v3

    .line 970
    goto :goto_0

    .line 972
    .end local v0    # "id":J
    :cond_6
    const-string v4, "subject"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 973
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 975
    :cond_7
    const-string v4, "_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 976
    .restart local v0    # "id":J
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsEmail(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    .line 616
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 617
    const-string v0, ""

    .line 618
    .local v0, "hasText":Ljava/lang/String;
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v5, :cond_1

    .line 619
    const-string v0, "yes"

    .line 636
    :goto_0
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    .line 639
    .end local v0    # "hasText":Ljava/lang/String;
    :cond_0
    return-void

    .line 620
    .restart local v0    # "hasText":Ljava/lang/String;
    :cond_1
    iget v5, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v5, v9, :cond_4

    .line 621
    const-string v5, "text_only"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 622
    .local v4, "textOnly":I
    if-ne v4, v9, :cond_2

    .line 623
    const-string v0, "yes"

    goto :goto_0

    .line 625
    :cond_2
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 626
    .local v1, "id":J
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(J)Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 628
    const-string v0, "yes"

    goto :goto_0

    .line 630
    :cond_3
    const-string v0, "no"

    goto :goto_0

    .line 634
    .end local v1    # "id":J
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "textOnly":I
    :cond_4
    const-string v0, "yes"

    goto :goto_0
.end method

.method private setType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 6
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p4, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x1

    .line 686
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_3

    .line 689
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    if-ne v1, v5, :cond_2

    .line 690
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 699
    :cond_0
    :goto_0
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 702
    .end local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_1
    return-void

    .line 691
    .restart local v0    # "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_2
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 692
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 694
    :cond_3
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v1, v5, :cond_4

    .line 695
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 697
    :cond_4
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0
.end method

.method private setVCardFromEmailAddress(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "contactName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "incoming"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2376
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVCardFromEmailAddress, emailAdress is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v5

    .line 2378
    .local v1, "phoneNumbers":[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 2379
    .local v0, "emailAddresses":[Ljava/lang/String;
    if-ne p4, v6, :cond_0

    .line 2380
    aput-object p3, v0, v5

    .line 2381
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding addOriginator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2390
    :goto_0
    return-void

    .line 2386
    :cond_0
    aput-object p3, v0, v5

    .line 2387
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding Receipient "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V
    .locals 25
    .param p1, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "incoming"    # Z

    .prologue
    .line 2393
    const/16 v17, 0x0

    .local v17, "contactId":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2394
    .local v18, "contactName":Ljava/lang/String;
    const/16 v24, 0x0

    .line 2395
    .local v24, "phoneNumbers":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 2398
    .local v20, "emailAddresses":[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2401
    .local v6, "uri":Landroid/net/Uri;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v5, 0x1

    const-string v9, "display_name"

    aput-object v9, v7, v5

    .line 2402
    .local v7, "projection":[Ljava/lang/String;
    const-string v8, "in_visible_group=1"

    .line 2403
    .local v8, "selection":Ljava/lang/String;
    const-string v10, "_id ASC"

    .line 2406
    .local v10, "orderBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2407
    .local v23, "p":Landroid/database/Cursor;
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v9, 0x1

    if-lt v5, v9, :cond_0

    .line 2408
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2409
    const-string v5, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2410
    const-string v5, "display_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2412
    :cond_0
    if-eqz v23, :cond_1

    .line 2413
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2416
    :cond_1
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2417
    const/4 v5, 0x0

    aput-object p2, v24, v5

    .line 2420
    if-eqz v17, :cond_3

    .line 2422
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const-string v14, "contact_id = ?"

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v17, v15, v5

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2426
    if-eqz v23, :cond_3

    .line 2427
    const/16 v21, 0x0

    .line 2428
    .local v21, "i":I
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v22, v21

    .line 2429
    .end local v21    # "i":I
    .local v22, "i":I
    :goto_0
    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2430
    const-string v5, "data1"

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2432
    .local v19, "emailAddress":Ljava/lang/String;
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "i":I
    .restart local v21    # "i":I
    aput-object v19, v20, v22

    move/from16 v22, v21

    .line 2433
    .end local v21    # "i":I
    .restart local v22    # "i":I
    goto :goto_0

    .line 2434
    .end local v19    # "emailAddress":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2437
    .end local v22    # "i":I
    :cond_3
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_4

    .line 2438
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2441
    :goto_1
    return-void

    .line 2440
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p3, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1596
    const-string v0, ""

    .line 1598
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-object v0
.end method

.method private setWhereFilterAccountKey(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1573
    const-string v0, ""

    .line 1574
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1575
    return-object v0
.end method

.method private setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1359
    const-string v0, ""

    .line 1360
    .local v0, "where":Ljava/lang/String;
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v1, :cond_0

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    :goto_0
    return-object v0

    .line 1362
    :cond_0
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1363
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1365
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1308
    const-string v0, ""

    .line 1309
    .local v0, "where":Ljava/lang/String;
    const-string v1, "BluetoothMapContent"

    const-string v2, "Inside setWhereFilterFolderTypeEmail "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getQueryWithMailBoxKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1312
    const-string v1, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where query is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-object v0
.end method

.method private setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1338
    const-string v0, ""

    .line 1339
    .local v0, "where":Ljava/lang/String;
    const-string v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1340
    const-string v0, "msg_box = 1 AND thread_id <> -1"

    .line 1355
    :cond_0
    :goto_0
    return-object v0

    .line 1342
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    const-string v0, "msg_box = 4 AND thread_id <> -1"

    goto :goto_0

    .line 1345
    :cond_2
    const-string v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1346
    const-string v0, "msg_box = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1348
    :cond_3
    const-string v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1349
    const-string v0, "msg_box = 3 AND thread_id <> -1"

    goto :goto_0

    .line 1351
    :cond_4
    const-string v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1352
    const-string v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 1317
    const-string v0, ""

    .line 1318
    .local v0, "where":Ljava/lang/String;
    const-string v1, "inbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1319
    const-string v0, "type = 1 AND thread_id <> -1"

    .line 1334
    :cond_0
    :goto_0
    return-object v0

    .line 1321
    :cond_1
    const-string v1, "outbox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1322
    const-string v0, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    .line 1324
    :cond_2
    const-string v1, "sent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1325
    const-string v0, "type = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1327
    :cond_3
    const-string v1, "draft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1328
    const-string v0, "type = 3 AND thread_id <> -1"

    goto :goto_0

    .line 1330
    :cond_4
    const-string v1, "deleted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1331
    const-string v0, "thread_id = -1"

    goto :goto_0
.end method

.method private setWhereFilterMessagekey(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1579
    const-string v0, ""

    .line 1580
    .local v0, "where":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " messageKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    return-object v0
.end method

.method private setWhereFilterOriginator(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1485
    const-string v3, ""

    .line 1486
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    .line 1488
    .local v1, "orig":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1489
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "phones":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ((type <> 1) OR ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1497
    :goto_0
    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "localPhoneMatchOrig":Z
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1503
    const/4 v0, 0x1

    .line 1506
    :cond_0
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1508
    const/4 v0, 0x1

    .line 1511
    :cond_1
    if-nez v0, :cond_2

    .line 1512
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (type = 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1516
    .end local v0    # "localPhoneMatchOrig":Z
    .end local v2    # "phones":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 1494
    .restart local v2    # "phones":Ljava/lang/String;
    :cond_3
    const-string v3, " AND (type <> 1)"

    goto :goto_0
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 1398
    const-string v2, ""

    .line 1399
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 1400
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_2

    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1416
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 1417
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-nez v3, :cond_4

    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND date <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1433
    :cond_1
    :goto_1
    return-object v2

    .line 1402
    :cond_2
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v6, :cond_3

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    div-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1405
    :cond_3
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1407
    .local v1, "time":Landroid/text/format/Time;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND timeStamp >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodBegin, Ignore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1419
    .end local v0    # "e":Landroid/util/TimeFormatException;
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_4
    iget v3, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v3, v6, :cond_5

    .line 1420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND date <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    div-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1422
    :cond_5
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1424
    .restart local v1    # "time":Landroid/text/format/Time;
    :try_start_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND timeStamp <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto/16 :goto_1

    .line 1426
    :catch_1
    move-exception v0

    .line 1427
    .restart local v0    # "e":Landroid/util/TimeFormatException;
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad formatted FilterPeriodEnd, Ignore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1437
    const-string v10, ""

    .line 1438
    .local v10, "where":Ljava/lang/String;
    const-string v0, "*"

    const-string v1, "%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1440
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name like ?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    const-string v5, "display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1445
    .local v6, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1446
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1448
    .local v7, "contactId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object v7, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1453
    .local v9, "p":Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1457
    .local v8, "number":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1458
    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1462
    .end local v8    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1465
    :cond_3
    if-eqz v9, :cond_0

    .line 1466
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1469
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "p":Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_5

    .line 1470
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1473
    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1474
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1477
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1480
    :cond_7
    return-object v10
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    const/4 v3, 0x1

    .line 1519
    const-string v1, ""

    .line 1520
    .local v1, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    .line 1522
    .local v0, "pri":I
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-ne v2, v3, :cond_0

    .line 1524
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND pri<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1533
    :cond_0
    :goto_0
    return-object v1

    .line 1528
    :cond_1
    if-ne v0, v3, :cond_0

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1373
    const-string v0, ""

    .line 1374
    .local v0, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1375
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1376
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1377
    const-string v0, " AND read=0 "

    .line 1380
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1381
    const-string v0, " AND read=1 "

    .line 1394
    :cond_2
    :goto_0
    return-object v0

    .line 1384
    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 1385
    const-string v0, " AND flagRead=0 "

    .line 1388
    :cond_4
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1389
    const-string v0, " AND flagRead=1 "

    goto :goto_0
.end method

.method private setWhereFilterRecipient(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p2, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    .prologue
    .line 1538
    const-string v3, ""

    .line 1539
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "recip":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1542
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPhones(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "phones":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ((type = 1) OR ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1550
    :goto_0
    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, "localPhoneMatchOrig":Z
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1556
    const/4 v0, 0x1

    .line 1559
    :cond_0
    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1561
    const/4 v0, 0x1

    .line 1564
    :cond_1
    if-nez v0, :cond_2

    .line 1565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (type <> 1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1569
    .end local v0    # "localPhoneMatchOrig":Z
    .end local v1    # "phones":Ljava/lang/String;
    :cond_2
    return-object v3

    .line 1547
    .restart local v1    # "phones":Ljava/lang/String;
    :cond_3
    const-string v3, " AND (type = 1)"

    goto :goto_0
.end method

.method private setWhereFilterServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1585
    const-string v0, ""

    .line 1586
    .local v0, "where":Ljava/lang/String;
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1587
    const-string v0, "serverId =displayName"

    .line 1592
    :goto_0
    return-object v0

    .line 1590
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverId LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 4
    .param p1, "fi"    # Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v2, 0x1

    .line 1611
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v0

    .line 1612
    .local v0, "msgType":I
    iget v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->phoneType:I

    .line 1614
    .local v1, "phoneType":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1625
    :cond_0
    :goto_0
    return v2

    .line 1616
    :cond_1
    and-int/lit8 v3, v0, 0x3

    if-eqz v3, :cond_0

    .line 1619
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_2

    if-eq v1, v2, :cond_0

    .line 1622
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 1625
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpMessages()V
    .locals 5

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->dumpSmsTable()V

    .line 449
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->dumpMmsTable()V

    .line 451
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->buildAppParams()Lcom/android/bluetooth/map/BluetoothMapAppParams;

    move-result-object v0

    .line 452
    .local v0, "ap":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message listing size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "inbox"

    invoke-virtual {p0, v4, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v2, "inbox"

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v1

    .line 455
    .local v1, "mList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    const-string v2, "sent"

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v1

    .line 461
    :try_start_1
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    :goto_1
    return-void

    .line 456
    :catch_0
    move-exception v2

    goto :goto_0

    .line 462
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public dumpMmsTable()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 351
    const-string v0, "BluetoothMapContent"

    const-string v1, "**** Dump of mms table ****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 355
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 357
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMms(Landroid/database/Cursor;)V

    .line 359
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 360
    .local v7, "id":J
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMmsAddr(J)V

    .line 361
    invoke-direct {p0, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMmsParts(J)V

    goto :goto_0

    .line 363
    .end local v7    # "id":J
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    :goto_1
    return-void

    .line 365
    :cond_1
    const-string v0, "BluetoothMapContent"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dumpSmsTable()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsEntry()V

    .line 371
    const-string v0, "BluetoothMapContent"

    const-string v1, "**** Dump of sms table ****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 375
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 377
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->printSms(Landroid/database/Cursor;)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :goto_1
    return-void

    .line 382
    :cond_1
    const-string v0, "BluetoothMapContent"

    const-string v1, "query failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getEmailFolderListAtPath(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1659
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailFolderListAtPath: id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "path: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v3, ""

    .line 1661
    .local v3, "where":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterAccountKey(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1665
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_BOX_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1666
    .local v7, "cr":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 1667
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    const-string v0, "serverId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1670
    .local v6, "columnIndex":I
    :cond_0
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1671
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    .end local v6    # "columnIndex":I
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1677
    :cond_2
    return-object v8
.end method

.method public getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 12
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2033
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmailMessage with is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-string v9, "content://com.android.email.provider/message"

    .line 2036
    .local v9, "urlEmail":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2037
    .local v1, "uriEmail":Landroid/net/Uri;
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;-><init>()V

    .line 2038
    .local v7, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2039
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 2044
    const-string v0, "flagRead"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2045
    invoke-virtual {v7, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setStatus(Z)V

    .line 2049
    :goto_0
    const-string v0, "mailboxKey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2050
    .local v8, "msgBox":I
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContainingFolderEmail(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setFolder(Ljava/lang/String;)V

    .line 2052
    const-string v0, "subject"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setSubject(Ljava/lang/String;)V

    .line 2053
    const-string v0, "Content-Type: text/plain; charset=\"UTF-8\""

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setContentType(Ljava/lang/String;)V

    .line 2054
    const-string v0, "timeStamp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setDate(J)V

    .line 2055
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setIncludeAttachments(Z)V

    .line 2058
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractEmailParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 2061
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractEmailAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 2063
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2065
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeEmail()[B

    move-result-object v0

    return-object v0

    .line 2047
    .end local v8    # "msgBox":I
    :cond_0
    invoke-virtual {v7, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setStatus(Z)V

    goto :goto_0

    .restart local v8    # "msgBox":I
    :cond_1
    move v0, v11

    .line 2055
    goto :goto_1

    .line 2067
    .end local v8    # "msgBox":I
    :cond_2
    if-eqz v6, :cond_3

    .line 2068
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2071
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "MMS handle not found"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 5
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2354
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v2

    .line 2355
    .local v2, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v0

    .line 2356
    .local v0, "id":J
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContent$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message handle."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2359
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMessage(JI)[B

    move-result-object v3

    .line 2369
    :goto_0
    return-object v3

    .line 2361
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    if-nez v3, :cond_0

    .line 2362
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Charset: Native for Message Type MMS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2364
    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v3

    goto :goto_0

    .line 2366
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    if-nez v3, :cond_1

    .line 2367
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Charset: Native for Message Type Email"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2369
    :cond_1
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v3

    goto :goto_0

    .line 2356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 11
    .param p1, "id"    # J
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;-><init>()V

    .line 2661
    .local v7, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2662
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2664
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 2667
    const-string v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2668
    .local v9, "read":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setStatus(Z)V

    .line 2673
    :goto_0
    const-string v0, "msg_box"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2674
    .local v8, "msgBox":I
    const-string v0, "thread_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2675
    .local v10, "threadId":I
    invoke-direct {p0, v8, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setFolder(Ljava/lang/String;)V

    .line 2677
    const-string v0, "sub"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setSubject(Ljava/lang/String;)V

    .line 2678
    const-string v0, "m_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setMessageId(Ljava/lang/String;)V

    .line 2679
    const-string v0, "ct_t"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setContentType(Ljava/lang/String;)V

    .line 2680
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {v7, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setDate(J)V

    .line 2681
    const-string v0, "text_only"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setTextOnly(Z)V

    .line 2682
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setIncludeAttachments(Z)V

    .line 2687
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 2690
    invoke-direct {p0, p1, p2, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;)V

    .line 2692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2694
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encode()[B

    move-result-object v0

    return-object v0

    .line 2671
    .end local v8    # "msgBox":I
    .end local v10    # "threadId":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setStatus(Z)V

    goto :goto_0

    .line 2681
    .restart local v8    # "msgBox":I
    .restart local v10    # "threadId":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 2682
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 2696
    .end local v8    # "msgBox":I
    .end local v9    # "read":Ljava/lang/String;
    .end local v10    # "threadId":I
    :cond_3
    if-eqz v6, :cond_4

    .line 2697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2700
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MMS handle not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSmsMessage(JI)[B
    .locals 18
    .param p1, "id"    # J
    .param p3, "charset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2448
    const-wide/16 v14, -0x1

    .line 2450
    .local v14, "time":J
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 2451
    .local v9, "message":Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 2452
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2454
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2457
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c.count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2460
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 2465
    :cond_0
    :goto_0
    const-string v2, "read"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2466
    .local v12, "read":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2467
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    .line 2471
    :goto_1
    const-string v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 2472
    .local v17, "type":I
    const-string v2, "thread_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2473
    .local v13, "threadId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    .line 2475
    const-string v2, "body"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2477
    .local v10, "msgBody":Ljava/lang/String;
    const-string v2, "address"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2479
    .local v11, "phone":Ljava/lang/String;
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2480
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_3

    .line 2481
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    .line 2485
    :goto_2
    if-nez p3, :cond_5

    .line 2486
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 2487
    invoke-static {v10, v11, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    .line 2494
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2496
    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object v2

    return-object v2

    .line 2461
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2462
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_0

    .line 2469
    .restart local v12    # "read":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto :goto_1

    .line 2483
    .restart local v10    # "msgBody":Ljava/lang/String;
    .restart local v11    # "phone":Ljava/lang/String;
    .restart local v13    # "threadId":I
    .restart local v17    # "type":I
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)V

    goto :goto_2

    .line 2489
    :cond_4
    invoke-static {v10, v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 2491
    :cond_5
    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V

    goto :goto_3

    .line 2498
    .end local v10    # "msgBody":Ljava/lang/String;
    .end local v11    # "phone":Ljava/lang/String;
    .end local v12    # "read":Ljava/lang/String;
    .end local v13    # "threadId":I
    .end local v17    # "type":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SMS handle not found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 12
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 2179
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListing: folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 2181
    .local v6, "bmList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    const/4 v9, 0x0

    .line 2182
    .local v9, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingFolder:Ljava/lang/String;

    .line 2183
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingFolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v10, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2187
    .local v10, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2189
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2190
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2191
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v0

    if-eq v0, v11, :cond_2

    .line 2192
    invoke-direct {p0, p1, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2194
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2197
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 2198
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->printSms(Landroid/database/Cursor;)V

    .line 2201
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v9

    .line 2202
    invoke-virtual {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_0

    .line 2205
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2210
    .end local v3    # "where":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2211
    iput v11, v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2213
    invoke-direct {p0, p1, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2215
    .restart local v3    # "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2218
    .restart local v7    # "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 2219
    const/4 v8, 0x0

    .line 2220
    .local v8, "cnt":I
    :cond_3
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2221
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2222
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->printMms(Landroid/database/Cursor;)V

    .line 2223
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v9

    .line 2224
    invoke-virtual {v6, v9}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_1

    .line 2227
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2232
    .end local v3    # "where":Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "cnt":I
    :cond_5
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 2233
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 2235
    return-object v6
.end method

.method public msgListingEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 12
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v5, 0x0

    .line 2075
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgListing: folder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const-string v11, "content://com.android.email.provider/message"

    .line 2077
    .local v11, "urlEmail":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2078
    .local v1, "uriEmail":Landroid/net/Uri;
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 2079
    .local v6, "bmList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    const/4 v8, 0x0

    .line 2082
    .local v8, "e":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v10, p0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2083
    .local v10, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2085
    invoke-direct {p0, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2086
    const/4 v0, 0x2

    iput v0, v10, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2088
    invoke-direct {p0, p1, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2089
    .local v3, "where":Ljava/lang/String;
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where clause is = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "timeStamp desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2093
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 2094
    const-string v0, "BluetoothMapContent"

    const-string v2, "Cursor is null. Returning from here"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_0
    if-eqz v7, :cond_2

    .line 2098
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2099
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->printEmail(Landroid/database/Cursor;)V

    .line 2101
    invoke-direct {p0, v7, v10, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v8

    .line 2102
    invoke-virtual {v6, v8}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2107
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2108
    .local v9, "es":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLite exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    .end local v3    # "where":Ljava/lang/String;
    .end local v9    # "es":Landroid/database/sqlite/SQLiteException;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 2114
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 2116
    return-object v6

    .line 2105
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public msgListingHasUnread(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 11
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 2280
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingHasUnread: folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const/4 v7, 0x0

    .line 2284
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2285
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2287
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2288
    iput v10, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2289
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2290
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND read=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2292
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2295
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2296
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2301
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2302
    iput v9, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2303
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2304
    .restart local v3    # "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND read=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2306
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2309
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2310
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 2311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2315
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingHasUnread: numUnread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    if-lez v7, :cond_2

    move v0, v9

    :goto_0
    return v0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method public msgListingHasUnreadEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 10
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 2151
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListingHasUnread: folder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const/4 v7, 0x0

    .line 2153
    .local v7, "cnt":I
    const-string v9, "content://com.android.email.provider/message"

    .line 2154
    .local v9, "urlEmail":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2157
    .local v1, "uriEmail":Landroid/net/Uri;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2158
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2160
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2162
    invoke-direct {p0, p1, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2163
    .local v3, "where":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND flagRead=0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2165
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "timeStamp desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2168
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2169
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 2170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2174
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgListingHasUnread: numUnread = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    if-lez v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public msgListingSize(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 9
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 2239
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingSize: folder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/4 v7, 0x0

    .line 2243
    .local v7, "cnt":I
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2244
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2246
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2248
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2249
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2252
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2253
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2258
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2259
    const/4 v0, 0x1

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2260
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2261
    .restart local v3    # "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2264
    .restart local v6    # "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2265
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 2266
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2270
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "BluetoothMapContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingSize: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    return v7
.end method

.method public msgListingSizeEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 10
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "ap"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/4 v4, 0x0

    .line 2120
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListingSize: folder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v7, 0x0

    .line 2122
    .local v7, "cnt":I
    const-string v9, "content://com.android.email.provider/message"

    .line 2123
    .local v9, "urlEmail":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2126
    .local v1, "uriEmail":Landroid/net/Uri;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    invoke-direct {v8, p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2127
    .local v8, "fi":Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    invoke-direct {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2129
    invoke-direct {p0, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2130
    const/4 v0, 0x2

    iput v0, v8, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->msgType:I

    .line 2131
    invoke-direct {p0, p1, v8, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v3

    .line 2132
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapContent;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v5, "timeStamp desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2135
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v7, v0

    .line 2137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2141
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const-string v0, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgListingSize: size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    return v7
.end method

.method public msgUpdate()V
    .locals 6

    .prologue
    .line 2344
    const-string v3, "BluetoothMapContent"

    const-string v4, "Message Update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2346
    .local v0, "accountId":J
    const-string v3, "BluetoothMapContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Account id for Inbox Update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2348
    .local v2, "emailIn":Landroid/content/Intent;
    const-string v3, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2349
    const-string v3, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2350
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2351
    return-void
.end method
