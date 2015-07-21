.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;
.super Ljava/lang/Object;
.source "BluetoothMapbMessageMmsEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePart"
.end annotation


# instance fields
.field public _id:J

.field public charsetName:Ljava/lang/String;

.field public contentDisposition:Ljava/lang/String;

.field public contentId:Ljava/lang/String;

.field public contentLocation:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public data:[B

.field public fileName:Ljava/lang/String;

.field public partName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->_id:J

    .line 43
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentId:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentLocation:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentDisposition:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->charsetName:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->fileName:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "boundaryTag"    # Ljava/lang/String;
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 70
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public encodePlainText(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->data:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->contentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/SMIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 84
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail$MimePart;->partName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_3
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
