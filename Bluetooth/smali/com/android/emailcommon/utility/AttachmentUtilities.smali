.class public Lcom/android/emailcommon/utility/AttachmentUtilities;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/AttachmentUtilities$Columns;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field private static final ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

.field public static final FORMAT_RAW:Ljava/lang/String; = "RAW"

.field public static final FORMAT_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL"

.field public static final INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I = 0x500000

.field public static final MAX_ATTACHMENT_UPLOAD_SIZE:I = 0x500000

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field private static sUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cachedFile"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    .line 79
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    .line 86
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 97
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 103
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 110
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ade"

    aput-object v1, v0, v3

    const-string v1, "adp"

    aput-object v1, v0, v4

    const-string v1, "bat"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cpl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dll"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hta"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ins"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jse"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lib"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mde"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "msc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mst"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pif"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "scr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "shb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sys"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vbe"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "vbs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "vxd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "wsc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "wsf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "wsh"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "zip"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "tar"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "tgz"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "bz2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    .line 124
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    int-to-long v0, v2

    .line 389
    .local v0, "size":J
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 390
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 391
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 392
    return-wide v0
.end method

.method public static deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 377
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 378
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 385
    :cond_0
    return-void

    .line 379
    :cond_1
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 380
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 381
    .local v5, "result":Z
    if-nez v5, :cond_2

    .line 382
    sget-object v6, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete attachment file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 379
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 303
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 304
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 307
    .local v9, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 309
    .local v7, "attachmentId":J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 313
    .local v6, "attachmentFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 316
    .end local v6    # "attachmentFile":Ljava/io/File;
    .end local v7    # "attachmentId":J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 318
    return-void
.end method

.method public static deleteAllCachedAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 330
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/utility/AttachmentUtilities;->ATTACHMENT_CACHED_FILE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    .local v6, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "fileName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v7, "cachedFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    .end local v7    # "cachedFile":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J

    .prologue
    const/4 v9, 0x0

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 361
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 363
    .local v7, "messageId":J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 366
    .end local v7    # "messageId":J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    return-void
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "attachmentId"    # J

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJJJ)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "id"    # J
    .param p4, "width"    # J
    .param p6, "height"    # J

    .prologue
    .line 156
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    .line 159
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "id"    # J

    .prologue
    .line 144
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    .line 147
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->sUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 259
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 260
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 263
    .end local v1    # "lastDot":I
    :cond_0
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "resultType":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 223
    .local v2, "isTextPlain":Z
    const-string v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    const-string v3, "message/rfc822"

    .line 244
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 245
    if-eqz v2, :cond_8

    const-string v3, "text/plain"

    .line 247
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 226
    :cond_2
    if-nez v2, :cond_3

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    const/4 v1, 0x1

    .line 229
    .local v1, "isGenericType":Z
    :goto_2
    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 230
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 232
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    if-eqz v2, :cond_6

    move-object v3, p1

    :goto_3
    goto :goto_0

    .line 226
    .end local v1    # "isGenericType":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 235
    .restart local v1    # "isGenericType":Z
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 239
    :cond_7
    move-object v3, p1

    goto :goto_0

    .line 245
    .end local v1    # "isGenericType":Z
    :cond_8
    const-string v3, "application/octet-stream"

    goto :goto_1
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 277
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 282
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "strUri":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 285
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 289
    .end local p1    # "attachmentUri":Landroid/net/Uri;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v7    # "strUri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 289
    .restart local p1    # "attachmentUri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static saveAttachment(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .prologue
    .line 399
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 400
    .local v30, "uri":Landroid/net/Uri;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 401
    .local v20, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 402
    .local v15, "attachmentId":J
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 403
    .local v12, "accountId":J
    const/16 v19, 0x0

    .line 404
    .local v19, "contentUri":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 406
    .local v9, "size":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 410
    .local v27, "resolver":Landroid/content/ContentResolver;
    const/16 v28, 0x0

    .line 411
    .local v28, "savedToCache":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 412
    move-wide v0, v15

    invoke-static {v12, v13, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    .line 413
    .local v14, "attUri":Landroid/net/Uri;
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v9

    .line 414
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 415
    const/16 v28, 0x1

    .line 420
    .end local v14    # "attUri":Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    if-nez v4, :cond_2

    .line 421
    if-nez v28, :cond_4

    .line 422
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Trying to save an attachment to cache, but do not saved?"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 424
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v27    # "resolver":Landroid/content/ContentResolver;
    .end local v28    # "savedToCache":Z
    :catch_0
    move-exception v22

    .line 467
    .local v22, "e":Ljava/io/IOException;
    const-string v4, "uiState"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    .end local v22    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 472
    if-eqz v19, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 473
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v17

    .line 474
    .local v17, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 475
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 476
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 477
    .local v24, "html":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\E\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 479
    .local v18, "contentIdRe":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " src=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 480
    .local v29, "srcContentUri":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 481
    const-string v4, "htmlContent"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    .end local v17    # "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v18    # "contentIdRe":Ljava/lang/String;
    .end local v24    # "html":Ljava/lang/String;
    .end local v29    # "srcContentUri":Ljava/lang/String;
    :cond_1
    return-void

    .line 426
    .restart local v27    # "resolver":Landroid/content/ContentResolver;
    .restart local v28    # "savedToCache":Z
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 427
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 430
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Trying to save an attachment with no name: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 432
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Can\'t save an attachment with no name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_3
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 436
    .local v21, "downloads":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 437
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 438
    .local v23, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v9

    .line 439
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "absolutePath":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 448
    const-string v4, "download"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 450
    .local v3, "dm":Landroid/app/DownloadManager;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide v25

    .line 454
    .local v25, "id":J
    move-wide/from16 v0, v25

    invoke-virtual {v3, v0, v1}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 462
    .end local v3    # "dm":Landroid/app/DownloadManager;
    .end local v8    # "absolutePath":Ljava/lang/String;
    .end local v21    # "downloads":Ljava/io/File;
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "id":J
    :cond_4
    const-string v4, "size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 463
    const-string v4, "contentUri"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v4, "uiState"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 456
    :cond_5
    sget-object v4, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Trying to save an attachment without external storage?"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method
