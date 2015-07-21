.class public final Lcom/android/emailcommon/provider/EmailContent$Attachment;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$AttachmentColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# static fields
.field public static final ATTACHMENT_PROVIDER_LEGACY_URI_PREFIX:Ljava/lang/String; = "content://com.android.email.attachmentprovider"

.field public static ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String; = null

.field public static final CACHED_FILE_QUERY_PARAM:Ljava/lang/String; = "filePath"

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_CACHED_FILE_COLUMN:I = 0x6

.field public static final CONTENT_CONTENT_BYTES_COLUMN:I = 0xc

.field public static final CONTENT_CONTENT_COLUMN:I = 0xa

.field public static final CONTENT_CONTENT_ID_COLUMN:I = 0x4

.field public static final CONTENT_CONTENT_URI_COLUMN:I = 0x5

.field public static final CONTENT_ENCODING_COLUMN:I = 0x9

.field public static final CONTENT_FILENAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xb

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOCATION_COLUMN:I = 0x8

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0x7

.field public static final CONTENT_MIME_TYPE_COLUMN:I = 0x2

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_SIZE_COLUMN:I = 0x3

.field public static final CONTENT_UI_DESTINATION_COLUMN:I = 0xf

.field public static final CONTENT_UI_DOWNLOADED_SIZE_COLUMN:I = 0x10

.field public static final CONTENT_UI_STATE_COLUMN:I = 0xe

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DOWNLOAD_FAILED:I = 0x8

.field public static final FLAG_DOWNLOAD_FORWARD:I = 0x4

.field public static final FLAG_DOWNLOAD_USER_REQUEST:I = 0x2

.field public static final FLAG_DUMMY_ATTACHMENT:I = 0x400

.field public static final FLAG_ICS_ALTERNATIVE_PART:I = 0x1

.field public static final FLAG_POLICY_DISALLOWS_DOWNLOAD:I = 0x200

.field public static final FLAG_SMART_FORWARD:I = 0x100

.field public static MESSAGE_ID_URI:Landroid/net/Uri; = null

.field public static final PRECACHE_INBOX_SELECTION:Ljava/lang/String; = "contentUri isnull AND flags=0 AND messageKey IN (SELECT _id FROM Message WHERE mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,3,4))"

.field public static final PRECACHE_SELECTION:Ljava/lang/String; = "contentUri isnull AND flags=0"

.field public static final TABLE_NAME:Ljava/lang/String; = "Attachment"

.field public static sUsingLegacyPrefix:Z


# instance fields
.field public mAccountKey:J

.field private mCachedFileUri:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mContentBytes:[B

.field public mContentId:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field public mEncoding:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFlags:I

.field public mLocation:Ljava/lang/String;

.field public mMessageKey:J

.field public mMimeType:Ljava/lang/String;

.field public mSize:J

.field public mUiDestination:I

.field public mUiDownloadedSize:I

.field public mUiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1327
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contentId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cachedFile"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "encoding"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "content_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "uiState"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "uiDestination"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "uiDownloadedSize"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 1582
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 1376
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1377
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1555
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 1556
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1557
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1558
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1559
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1560
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1564
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1565
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 1568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1569
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1571
    .local v0, "contentBytesLen":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1572
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1577
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 1578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 1579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 1580
    return-void

    .line 1574
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1575
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method public static createUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1454
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1455
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1456
    .local v0, "directory":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1457
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1476
    .end local v0    # "directory":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 1461
    .restart local v0    # "directory":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1462
    .local v4, "index":I
    move-object v5, p0

    .line 1463
    .local v5, "name":Ljava/lang/String;
    const-string v1, ""

    .line 1464
    .local v1, "extension":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 1465
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1466
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1468
    :cond_2
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_1
    const v7, 0x7fffffff

    if-ge v3, v7, :cond_3

    .line 1469
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1470
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1468
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v6

    .line 1474
    goto :goto_0

    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    move-object v2, v6

    .line 1476
    goto :goto_0
.end method

.method public static initAttachment()V
    .locals 2

    .prologue
    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/attachment/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".attachmentprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    .line 1289
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    const-string v1, "content://com.android.email.attachmentprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->sUsingLegacyPrefix:Z

    .line 1291
    return-void
.end method

.method public static restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 1419
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    return-object v0
.end method

.method public static restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1428
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1429
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1432
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1433
    .local v9, "count":I
    new-array v7, v9, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1434
    .local v7, "attachments":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 1435
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1436
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 1437
    .local v6, "attach":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 1438
    aput-object v6, v7, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1442
    .end local v6    # "attach":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v7

    .end local v7    # "attachments":[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9    # "count":I
    .end local v10    # "i":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1525
    const/4 v0, 0x0

    return v0
.end method

.method public getCachedFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1408
    :goto_0
    return-object v1

    .line 1394
    :cond_0
    sget-boolean v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->sUsingLegacyPrefix:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v2, "content://com.android.email.attachmentprovider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1398
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1399
    .local v0, "prefix":I
    if-lez v0, :cond_1

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ATTACHMENT_PROVIDER_URI_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1403
    :cond_1
    const-string v1, "Attachment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Improper contentUri format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1405
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_0

    .line 1408
    .end local v0    # "prefix":I
    :cond_2
    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1481
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 1482
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    .line 1483
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1484
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1485
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 1486
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 1487
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1488
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1489
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1490
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 1491
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 1492
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 1493
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1494
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1495
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 1496
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    .line 1497
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    .line 1498
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    .line 1499
    return-void
.end method

.method public setCachedFileUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "cachedFile"    # Ljava/lang/String;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    .line 1381
    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 1389
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1503
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fileName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v1, "size"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1507
    const-string v1, "contentId"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v1, "cachedFile"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1511
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v1, "encoding"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    const-string v1, "content_bytes"

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1516
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1517
    const-string v1, "uiState"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1518
    const-string v1, "uiDestination"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1519
    const-string v1, "uiDownloadedSize"

    iget v2, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1520
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1531
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1532
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1534
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1535
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mCachedFileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1538
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1539
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1542
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1544
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-nez v0, :cond_0

    .line 1545
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    :goto_0
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1551
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDestination:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mUiDownloadedSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1553
    return-void

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
