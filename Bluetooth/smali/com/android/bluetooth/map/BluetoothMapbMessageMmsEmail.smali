.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageMmsEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    }
.end annotation


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final D:Z = true

.field protected static TAG:Ljava/lang/String; = null

.field private static final V:Z = true


# instance fields
.field private bcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private cc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/lang/String;

.field private date:J

.field private emailBody:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private hasHeaders:Z

.field private includeAttachments:Z

.field private messageId:Ljava/lang/String;

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private textOnly:Z

.field private to:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "BluetoothMapbMessageEmail"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 91
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    .line 92
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    .line 93
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->emailBody:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 95
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 96
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 97
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 98
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 99
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 100
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    .line 102
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 104
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    .line 106
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->hasHeaders:Z

    .line 107
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    return-void
.end method

.method private decodeBody(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 634
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BASE64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 644
    :goto_0
    return-object v0

    .line 639
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 644
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method private static parseBoundaryEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 663
    const-string v3, "boundary=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 664
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 665
    const-string v3, "boundary=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 666
    .local v0, "beginVersionPos":I
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 667
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 669
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static parseContentTypeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmsg"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 648
    .local v3, "pos1":I
    const-string v4, "Content-Type:"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 649
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 651
    const-string v4, "Content-Type:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 652
    .local v0, "beginVersionPos":I
    const-string v4, "\r\n"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 657
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseMms(Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 782
    const/4 v6, 0x0

    .line 783
    .local v6, "remaining":Ljava/lang/String;
    const/4 v2, 0x0

    .line 784
    .local v2, "messageBody":Ljava/lang/String;
    const-string v7, "\\r\\n[ \\\t]+"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 785
    const-string v7, "\r\n\r\n"

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, "messageParts":[Ljava/lang/String;
    array-length v7, v3

    if-eq v7, v11, :cond_2

    .line 788
    move-object v2, p1

    .line 801
    :goto_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 804
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsMimeBody(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setTextOnly(Z)V

    .line 806
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 807
    const-string v7, "text/plain"

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 808
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 824
    :cond_1
    return-void

    .line 792
    :cond_2
    aget-object v7, v3, v10

    invoke-direct {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 794
    if-eqz v6, :cond_3

    .line 795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 798
    :cond_3
    aget-object v2, v3, v9

    goto :goto_0

    .line 812
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, "mimeParts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_1

    .line 814
    aget-object v5, v4, v1

    .line 815
    .local v5, "part":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 817
    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMmsMimePart(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " part-Header not formatted correctly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "hdrPart"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v13, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 482
    .local v7, "headers":[Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->hasHeaders:Z

    .line 484
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v1, v7

    .local v1, "c":I
    :goto_0
    if-ge v8, v1, :cond_e

    .line 485
    aget-object v3, v7, v8

    .line 491
    .local v3, "header":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-ne v13, v14, :cond_1

    .line 484
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 493
    :cond_1
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 496
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v11, "remaining":Ljava/lang/StringBuilder;
    :goto_2
    if-ge v8, v1, :cond_2

    .line 498
    aget-object v13, v7, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 500
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 557
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v11    # "remaining":Ljava/lang/StringBuilder;
    :goto_3
    return-object v13

    .line 503
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v4    # "headerParts":[Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "headerValue":Ljava/lang/String;
    const-string v13, "FROM"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 511
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 512
    .local v12, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    goto :goto_1

    .line 514
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    const-string v13, "TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 515
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 516
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    goto :goto_1

    .line 518
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string v13, "CC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 519
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 520
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    goto :goto_1

    .line 522
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_6
    const-string v13, "BCC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 523
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 524
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 526
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    const-string v13, "REPLY-TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 527
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 528
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 530
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_8
    const-string v13, "SUBJECT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 531
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    goto/16 :goto_1

    .line 533
    :cond_9
    const-string v13, "MESSAGE-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 534
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    goto/16 :goto_1

    .line 536
    :cond_a
    const-string v13, "DATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 539
    const-string v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 540
    const-string v13, ";"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "contentTypeParts":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 543
    const/4 v9, 0x1

    .local v9, "j":I
    array-length v10, v2

    .local v10, "n":I
    :goto_4
    if-ge v9, v10, :cond_0

    .line 545
    aget-object v13, v2, v9

    const-string v14, "boundary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 546
    aget-object v13, v2, v9

    const-string v14, "boundary[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->boundary:Ljava/lang/String;

    .line 543
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 550
    .end local v2    # "contentTypeParts":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "n":I
    :cond_c
    const-string v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 551
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 554
    :cond_d
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping unknown header: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 557
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method private parseMmsMimeBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v0

    .line 630
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->decodeBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 631
    return-void
.end method

.method private parseMmsMimePart(Ljava/lang/String;)V
    .locals 16
    .param p1, "partStr"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v13, "\r\n\r\n"

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 562
    .local v12, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 563
    .local v2, "body":Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    .line 565
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Mime part not formatted correctly: No Header"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 567
    :cond_0
    const/4 v13, 0x1

    aget-object v2, v12, v13

    .line 569
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 570
    .local v7, "headers":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 571
    .local v10, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    .line 573
    .local v11, "partEncoding":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_a

    aget-object v3, v1, v8

    .line 574
    .local v3, "header":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 573
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-eq v13, v14, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "--"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 579
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 581
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "part-Header not Formatted correctly: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 583
    :cond_3
    if-nez v10, :cond_4

    .line 584
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v14, "Add new MimePart\n"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    move-result-object v10

    .line 587
    :cond_4
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 589
    .local v6, "headerValue":Ljava/lang/String;
    const-string v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 591
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 592
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** CONTENT-TYPE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    :cond_5
    const-string v13, "CONTENT-LOCATION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 596
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    .line 597
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    goto/16 :goto_1

    .line 599
    :cond_6
    const-string v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 600
    move-object v11, v6

    goto/16 :goto_1

    .line 602
    :cond_7
    const-string v13, "CONTENT-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 604
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    goto/16 :goto_1

    .line 606
    :cond_8
    const-string v13, "CONTENT-DISPOSITION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 608
    iput-object v6, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    goto/16 :goto_1

    .line 611
    :cond_9
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping unknown part-header: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 615
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->decodeBody(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    .line 616
    return-void
.end method

.method private static parseSubjectEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v3, "Subject:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 619
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 620
    const-string v3, "Subject:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 621
    .local v0, "beginVersionPos":I
    const-string v3, "\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 622
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 624
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public addFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    .line 125
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;-><init>()V

    .line 126
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public addSender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeMms()[B

    move-result-object v0

    return-object v0
.end method

.method public encodeEmail()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 365
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v12, "Inside encodeEmail "

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 370
    .local v2, "count":I
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 371
    .local v6, "randomGenerator":Ljava/util/Random;
    const/16 v10, 0x3e8

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 372
    .local v7, "randomInt":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MessageBoundary."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "boundary":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 376
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "after encode header sb is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    .line 379
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getIncludeAttachments()Z

    move-result v10

    if-nez v10, :cond_0

    .line 380
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 381
    .local v5, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    invoke-virtual {v5, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 384
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 385
    .restart local v5    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    add-int/lit8 v2, v2, 0x1

    .line 386
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getBoundary()Ljava/lang/String;

    move-result-object v12

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v2, v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v5, v8, v12, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v10, v11

    goto :goto_2

    .line 390
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_2
    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v12, " parts is null."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "emailBody":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 396
    const-string v10, "END:MSG"

    const-string v11, "/END\\:MSG"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 397
    .local v9, "tmpBody":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v9    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v10

    return-object v10

    .line 399
    :cond_4
    new-array v10, v11, [B

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    const/4 v2, 0x0

    .line 287
    .local v2, "lineLength":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    .line 288
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 290
    .local v0, "address":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 292
    .local v3, "partLength":I
    add-int v4, v2, v3

    const/16 v5, 0x3e6

    if-lt v4, v5, :cond_0

    .line 294
    const-string v4, "\r\n "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v2, 0x0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/2addr v2, v3

    .line 299
    goto :goto_0

    .line 300
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v3    # "partLength":I
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    return-void
.end method

.method public encodeHeaders(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    sget v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->INVALID_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "Date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 329
    const-string v0, "Subject: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 331
    const-string v0, "From: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 333
    const-string v0, "Sender: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 339
    const-string v0, "To:  undisclosed-recipients:;\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 341
    const-string v0, "To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 343
    const-string v0, "Cc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 345
    const-string v0, "Bcc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 347
    const-string v0, "Reply-To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 348
    :cond_8
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 350
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 351
    const-string v0, "Message-Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 353
    const-string v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_a
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    return-void
.end method

.method public encodeMms()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 446
    .local v1, "count":I
    const-string v7, "8BIT"

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encoding:Ljava/lang/String;

    .line 448
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getIncludeAttachments()Z

    move-result v7

    if-nez v7, :cond_0

    .line 450
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 451
    .local v4, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 454
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 455
    .restart local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    add-int/lit8 v1, v1, 0x1

    .line 456
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->getBoundary()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v4, v5, v9, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_2

    .line 460
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "mmsBody":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 463
    const-string v7, "END:MSG"

    const-string v8, "/END\\:MSG"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "tmpBody":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v6    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v7

    return-object v7

    .line 466
    :cond_3
    new-array v7, v8, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getBcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    return-wide v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 131
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 132
    .local v0, "dateObj":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludeAttachments()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    return v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 6

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "message_size":I
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 264
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v5, " parts is null. returning "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 270
    .end local v1    # "message_size":I
    .local v2, "message_size":I
    :goto_0
    return v2

    .line 267
    .end local v2    # "message_size":I
    .restart local v1    # "message_size":I
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 268
    .local v3, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v4, v3, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    array-length v4, v4

    add-int/2addr v1, v4

    .line 269
    goto :goto_1

    .end local v3    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    :cond_1
    move v2, v1

    .line 270
    .end local v1    # "message_size":I
    .restart local v2    # "message_size":I
    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    return v0
.end method

.method public getTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseBodyEmail(Ljava/lang/String;)V
    .locals 20
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 675
    const/4 v4, -0x1

    .line 676
    .local v4, "beginVersionPos":I
    const/16 v17, 0x0

    .line 677
    .local v17, "rfc822Flag":I
    const/4 v12, 0x0

    .line 678
    .local v12, "mimeFlag":I
    const/4 v5, -0x1

    .line 680
    .local v5, "beginVersionPos1":I
    const/4 v15, 0x0

    .line 682
    .local v15, "pos1":I
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseSubjectEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setSubject(Ljava/lang/String;)V

    .line 684
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseBoundaryEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "boundary":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 686
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 687
    const/4 v12, 0x1

    .line 693
    :goto_0
    const-string v18, "Content-Type"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 694
    .local v7, "contentIndex":I
    if-lez v7, :cond_0

    .line 695
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseContentTypeEmail(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "contentType":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "message/rfc822"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 697
    const/16 v17, 0x1

    .line 700
    .end local v8    # "contentType":Ljava/lang/String;
    :cond_0
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v14, v18, v19

    .line 701
    .local v14, "pos":I
    :goto_1
    if-lez v14, :cond_1

    .line 702
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 703
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v4, v14, v18

    .line 725
    :cond_1
    :goto_2
    if-lez v4, :cond_2

    .line 727
    if-nez v17, :cond_a

    .line 728
    if-nez v12, :cond_9

    .line 729
    const-string v18, "END:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 730
    .local v11, "endVersionPos":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_8

    .line 731
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V

    .line 769
    .end local v11    # "endVersionPos":I
    :cond_2
    :goto_3
    sget-object v18, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v19, "fetch body Email NULL:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 690
    .end local v7    # "contentIndex":I
    .end local v14    # "pos":I
    :cond_3
    const-string v18, "Date:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 691
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 706
    .restart local v7    # "contentIndex":I
    .restart local v14    # "pos":I
    :cond_4
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 707
    .local v13, "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    .line 710
    const-string v18, "BEGIN:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 711
    .local v3, "beginMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    .line 712
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ill-formatted bMessage, no BEGIN:MSG"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 714
    :cond_5
    const-string v18, "END:MSG"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 715
    .local v10, "endMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 716
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ill-formatted bMessage, no END:MSG"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 718
    :cond_6
    const-string v18, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v3

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v10, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 721
    .end local v3    # "beginMsg":I
    .end local v10    # "endMsg":I
    :cond_7
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v13, v18

    .line 723
    goto/16 :goto_1

    .line 733
    .end local v13    # "next":I
    .restart local v11    # "endVersionPos":I
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 736
    .end local v11    # "endVersionPos":I
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v11, v18, v19

    .line 738
    .restart local v11    # "endVersionPos":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 739
    :catch_0
    move-exception v9

    .line 740
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 743
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "endVersionPos":I
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 744
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 746
    .restart local v11    # "endVersionPos":I
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 750
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 751
    .local v16, "pos2":I
    :goto_4
    if-lez v16, :cond_b

    .line 752
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 753
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v16, v18

    .line 764
    :cond_b
    if-lez v5, :cond_2

    .line 765
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->setEmailBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 747
    .end local v16    # "pos2":I
    :catch_1
    move-exception v9

    .line 748
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 756
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "pos2":I
    :cond_c
    const-string v18, "\r\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 757
    .restart local v13    # "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    .line 758
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Ill-formatted bMessage, no empty line"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 760
    :cond_d
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v13, v18

    .line 762
    goto :goto_4
.end method

.method public parseMsgInit()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parseMms(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setBcc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "bcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->bcc:Ljava/util/ArrayList;

    .line 202
    return-void
.end method

.method public setCc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "cc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->cc:Ljava/util/ArrayList;

    .line 191
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->contentType:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .param p1, "date"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->date:J

    .line 139
    return-void
.end method

.method public setEmailBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "emailBody"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting setEmailBody to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->emailBody:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->from:Ljava/util/ArrayList;

    .line 158
    return-void
.end method

.method public setIncludeAttachments(Z)V
    .locals 0
    .param p1, "includeAttachments"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->includeAttachments:Z

    .line 242
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->messageId:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setReplyTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "replyTo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->replyTo:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method public setSender(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "sender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->sender:Ljava/util/ArrayList;

    .line 169
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting Subject to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->subject:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0
    .param p1, "textOnly"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->textOnly:Z

    .line 236
    return-void
.end method

.method public setTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->to:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method public updateCharset()V
    .locals 4

    .prologue
    .line 247
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v3, " Inside updateCharset "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->charset:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 250
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->TAG:Ljava/lang/String;

    const-string v3, " parts is null. returning "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;

    .line 254
    .local v1, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;->charset:Ljava/lang/String;

    goto :goto_0
.end method
