.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final BODY_PATTERN:Ljava/util/regex/Pattern;

.field private static final BODY_PATTERN_GROUP:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final INDEX_BODY_HTML:I = 0x1

.field private static final INDEX_BODY_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Email"

.field static sBoundaryDigit:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 63
    const-string v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "body"    # Lcom/android/emailcommon/provider/EmailContent$Body;
    .param p1, "useSmartReply"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 94
    new-array v0, v2, [Ljava/lang/String;

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 97
    .local v0, "messageBody":[Ljava/lang/String;
    iget v1, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mQuotedTextStartPos:I

    .line 98
    .local v1, "pos":I
    if-eqz p1, :cond_0

    if-lez v1, :cond_0

    .line 99
    aget-object v2, v0, v3

    if-eqz v2, :cond_2

    .line 100
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    aget-object v2, v0, v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 103
    :cond_2
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 104
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 105
    aget-object v2, v0, v4

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    .end local p0    # "html":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static getNextBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "boundary":Ljava/lang/StringBuilder;
    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    const-class v2, Lcom/android/emailcommon/internet/Rfc822Output;

    monitor-enter v2

    .line 397
    :try_start_0
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    sput-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    .line 399
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 399
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 333
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 334
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 335
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 336
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 338
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "end"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 350
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 351
    if-eqz p2, :cond_0

    .line 352
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 354
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 355
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 317
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 319
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 321
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 300
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 301
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 302
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 304
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "attachment"    # Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 225
    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 231
    const-string v10, "Content-ID"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    const-string v10, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 236
    const/4 v7, 0x0

    .line 239
    .local v7, "inStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v10, :cond_3

    .line 240
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v7    # "inStream":Ljava/io/InputStream;
    .local v8, "inStream":Ljava/io/InputStream;
    move-object v7, v8

    .line 264
    .end local v8    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "inStream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/Writer;->flush()V

    .line 265
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v10, 0x14

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 268
    .local v1, "base64Out":Landroid/util/Base64OutputStream;
    invoke-static {v7, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 269
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 274
    const/16 v10, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 275
    const/16 v10, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 288
    .end local v1    # "base64Out":Landroid/util/Base64OutputStream;
    :goto_1
    return-void

    .line 243
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getCachedFileUri()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "cachedFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 245
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 247
    .local v3, "cachedFileUri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 257
    .end local v3    # "cachedFileUri":Landroid/net/Uri;
    :cond_4
    :goto_2
    if-nez v7, :cond_2

    .line 259
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 260
    .local v5, "fileUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_0

    .line 248
    .end local v5    # "fileUri":Landroid/net/Uri;
    .restart local v3    # "cachedFileUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 250
    .local v4, "e":Ljava/io/FileNotFoundException;
    const/4 v7, 0x0

    .line 252
    const-string v10, "Email"

    const-string v11, "Rfc822Output#writeOneAttachment(), failed to loadcached file, falling back to: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContentUri()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 278
    .end local v2    # "cachedFile":Ljava/lang/String;
    .end local v3    # "cachedFileUri":Landroid/net/Uri;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 280
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    const-string v10, "Email"

    const-string v11, "Rfc822Output#writeOneAttachment(), FileNotFoundExceptionwhen sending attachment"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v6, v11, v12}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 283
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    .line 284
    .local v9, "ioe":Ljava/io/IOException;
    const-string v10, "Email"

    const-string v11, "Rfc822Output#writeOneAttachment(), IOExceptionwhen sending attachment"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v9, v11, v12}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 286
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Invalid attachment."

    invoke-direct {v10, v11, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 7
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bodyText"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "html":Z
    const/4 v4, 0x0

    aget-object v2, p2, v4

    .line 372
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 373
    const/4 v4, 0x1

    aget-object v2, p2, v4

    .line 374
    const/4 v0, 0x1

    .line 376
    :cond_0
    if-nez v2, :cond_1

    .line 377
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 380
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string v4, "html"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "mimeType":Ljava/lang/String;
    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; charset=utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "Content-Transfer-Encoding"

    const-string v5, "base64"

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 384
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 385
    .local v3, "textBytes":[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 386
    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 380
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v3    # "textBytes":[B
    :cond_2
    const-string v4, "plain"

    goto :goto_1
.end method

.method public static writeTo(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/io/OutputStream;ZZLjava/util/List;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/android/emailcommon/provider/EmailContent$Message;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "useSmartReply"    # Z
    .param p4, "sendBcc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/io/OutputStream;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 126
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v10, Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 132
    .local v10, "stream":Ljava/io/OutputStream;
    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v11, "writer":Ljava/io/Writer;
    sget-object v12, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "date":Ljava/lang/String;
    const-string v12, "Date"

    invoke-static {v11, v12, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v12, "Subject"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v12, "Message-ID"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v12, "From"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v12, "To"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v12, "Cc"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p4, :cond_1

    .line 150
    const-string v12, "Bcc"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    const-string v12, "Reply-To"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v12, "MIME-Version"

    const-string v13, "1.0"

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    .line 157
    .local v2, "body":Lcom/android/emailcommon/provider/EmailContent$Body;
    move/from16 v0, p3

    invoke-static {v2, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;Z)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "bodyText":[Ljava/lang/String;
    if-nez p5, :cond_2

    .line 161
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 165
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    const/4 v7, 0x1

    .line 166
    .local v7, "multipart":Z
    :goto_1
    const/4 v8, 0x0

    .line 167
    .local v8, "multipartBoundary":Ljava/lang/String;
    const-string v9, "mixed"

    .line 170
    .local v9, "multipartType":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 171
    invoke-static {v11, v10, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 208
    :goto_2
    invoke-virtual {v11}, Ljava/io/Writer;->flush()V

    .line 209
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 165
    .end local v7    # "multipart":Z
    .end local v8    # "multipartBoundary":Ljava/lang/String;
    .end local v9    # "multipartType":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 174
    .restart local v7    # "multipart":Z
    .restart local v8    # "multipartBoundary":Ljava/lang/String;
    .restart local v9    # "multipartType":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v8

    .line 177
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 180
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget v5, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 181
    .local v5, "flags":I
    and-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_5

    .line 182
    const-string v9, "alternative"

    .line 186
    .end local v5    # "flags":I
    :cond_5
    const-string v12, "Content-Type"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "multipart/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; boundary=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    const/4 v12, 0x0

    aget-object v12, v3, v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    aget-object v12, v3, v12

    if-eqz v12, :cond_7

    .line 193
    :cond_6
    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 194
    invoke-static {v11, v10, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 198
    :cond_7
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 199
    .local v1, "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 200
    move-object/from16 v0, p0

    invoke-static {v0, v11, v10, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 201
    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 205
    .end local v1    # "att":Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_8
    const/4 v12, 0x1

    invoke-static {v11, v8, v12}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method
