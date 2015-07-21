.class public Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
.super Ljava/lang/Object;
.source "MiuiNanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/MiuiNanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    }
.end annotation


# instance fields
.field private chunkedTransfer:Z

.field private data:Ljava/io/InputStream;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

.field private responsePos:I

.field private status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    .line 644
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    .line 645
    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 646
    iput-object p3, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 647
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "txt"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    .line 653
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    .line 654
    iput-object p2, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 656
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_1
    return-void

    .line 656
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 637
    sget-object v0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->OK:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;-><init>(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->send(Ljava/io/OutputStream;)V

    return-void
.end method

.method private send(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 673
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 674
    .local v4, "mime":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 676
    .local v0, "gmtFrmt":Ljava/text/SimpleDateFormat;
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 679
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    if-nez v7, :cond_0

    .line 680
    new-instance v7, Ljava/lang/Error;

    const-string v8, "sendResponse(): Status can\'t be null."

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :catch_0
    move-exception v2

    .line 712
    .local v2, "ioe":Ljava/io/IOException;
    const-string v7, "MiuiNanoHTTPD"

    const-string v8, "cannot write. client socket close."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 716
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 682
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 683
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    if-eqz v4, :cond_1

    .line 686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    const-string v8, "Date"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 690
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Date: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 693
    :cond_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 694
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 695
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 696
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    const-string v7, "Connection: keep-alive\r\n"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->requestMethod:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    sget-object v8, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->HEAD:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    if-eq v7, v8, :cond_5

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v7, :cond_5

    .line 703
    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->sendAsChunked(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V

    .line 707
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 708
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    # invokes: Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->safeClose(Ljava/io/Closeable;)V
    invoke-static {v7}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD;->access$400(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 705
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->sendAsFixedLength(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private sendAsChunked(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 719
    const-string v4, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    const-string v4, "\r\n"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 722
    const/16 v0, 0x4000

    .line 723
    .local v0, "BUFFER_SIZE":I
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 724
    .local v1, "CRLF":[B
    new-array v2, v0, [B

    .line 726
    .local v2, "buff":[B
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-lez v3, :cond_0

    .line 727
    const-string v4, "%x\r\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 728
    invoke-virtual {p1, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 729
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 734
    :cond_0
    const-string v4, "0\r\n\r\n"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 735
    return-void
.end method

.method private sendAsFixedLength(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 739
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 744
    .local v2, "pending":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    const-string v6, "\r\n"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 751
    move v4, v2

    .line 753
    .local v4, "totalBytes":I
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->requestMethod:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    sget-object v7, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;->HEAD:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 754
    const/16 v0, 0x4000

    .line 755
    .local v0, "BUFFER_SIZE":I
    new-array v1, v0, [B

    .line 756
    .local v1, "buff":[B
    :goto_1
    if-lez v2, :cond_0

    .line 757
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-le v2, v0, :cond_3

    move v6, v0

    :goto_2
    invoke-virtual {v7, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 759
    .local v3, "read":I
    if-gtz v3, :cond_4

    .line 771
    .end local v3    # "read":I
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->listener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    invoke-interface {v5, p0}, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;->onTransferFinished(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;)V

    .line 773
    .end local v0    # "BUFFER_SIZE":I
    .end local v1    # "buff":[B
    :cond_1
    return-void

    .end local v2    # "pending":I
    .end local v4    # "totalBytes":I
    :cond_2
    move v2, v5

    .line 739
    goto :goto_0

    .restart local v0    # "BUFFER_SIZE":I
    .restart local v1    # "buff":[B
    .restart local v2    # "pending":I
    .restart local v4    # "totalBytes":I
    :cond_3
    move v6, v2

    .line 757
    goto :goto_2

    .line 762
    .restart local v3    # "read":I
    :cond_4
    invoke-virtual {p1, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 764
    sub-int/2addr v2, v3

    .line 767
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->listener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    sub-int v7, v4, v2

    int-to-long v7, v7

    invoke-interface {v6, p0, v7, v8}, Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;->onTransferredBytes(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;J)V

    goto :goto_1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method public getData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->requestMethod:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    return-object v0
.end method

.method public getResponsePos()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->responsePos:I

    return v0
.end method

.method public getStatus()Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    return-object v0
.end method

.method public setChunkedTransfer(Z)V
    .locals 0
    .param p1, "chunkedTransfer"    # Z

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->chunkedTransfer:Z

    .line 809
    return-void
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->data:Ljava/io/InputStream;

    .line 797
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->mimeType:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setRequestMethod(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;)V
    .locals 0
    .param p1, "requestMethod"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->requestMethod:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Method;

    .line 805
    return-void
.end method

.method public setResponseBytesListener(Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->listener:Lcom/android/bluetooth/opp/MiuiHttpFileServer$ResponseListener;

    .line 816
    return-void
.end method

.method public setResponsePos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 819
    iput p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->responsePos:I

    .line 820
    return-void
.end method

.method public setStatus(Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response;->status:Lcom/android/bluetooth/opp/MiuiNanoHTTPD$Response$Status;

    .line 781
    return-void
.end method
