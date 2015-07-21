.class Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BMsgReader"
.end annotation


# instance fields
.field mInStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    .line 251
    return-void
.end method

.method private getLineAsBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 293
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "readByte":I
    if-eq v2, v4, :cond_1

    .line 296
    if-ne v2, v6, :cond_4

    .line 297
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_2

    .line 298
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .end local v2    # "readByte":I
    :goto_1
    return-object v3

    .line 303
    .restart local v2    # "readByte":I
    :cond_2
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 310
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 312
    .end local v2    # "readByte":I
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v3, 0x0

    goto :goto_1

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "readByte":I
    :cond_4
    if-ne v2, v5, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method private getLineTerminatorAsBytes()[B
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    const/16 v4, 0xd

    .line 259
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "readByte":I
    if-eq v2, v5, :cond_0

    .line 262
    if-ne v2, v4, :cond_2

    .line 263
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v5, :cond_1

    if-ne v2, v6, :cond_1

    .line 264
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 265
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v4, "outputsize 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 267
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .end local v2    # "readByte":I
    :goto_1
    return-object v3

    .line 271
    .restart local v2    # "readByte":I
    :cond_1
    const/16 v3, 0xd

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 274
    :cond_2
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 276
    .end local v2    # "readByte":I
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public expect(Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 378
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Line or substring is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_2
    return-void
.end method

.method public expect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subString"    # Ljava/lang/String;
    .param p2, "subString2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    return-void
.end method

.method public getDataBytes(I)[B
    .locals 7
    .param p1, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 405
    new-array v1, p1, [B

    .line 408
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 409
    .local v3, "offset":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->mInStream:Ljava/io/InputStream;

    sub-int v6, p1, v3

    invoke-virtual {v5, v1, v3, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "bytesRead":I
    sub-int v5, p1, v3

    if-eq v0, v5, :cond_0

    .line 410
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    move-object v1, v4

    .line 418
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    :cond_0
    :goto_1
    return-object v1

    .line 412
    .restart local v0    # "bytesRead":I
    .restart local v1    # "data":[B
    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    .line 414
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 416
    goto :goto_1
.end method

.method public getLine()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 341
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineAsBytes()[B

    move-result-object v1

    .line 342
    .local v1, "line":[B
    array-length v3, v1

    if-nez v3, :cond_0

    .line 348
    .end local v1    # "line":[B
    :goto_0
    return-object v2

    .line 345
    .restart local v1    # "line":[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 346
    .end local v1    # "line":[B
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLineEnforce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bmessage too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    return-object v0
.end method

.method public getLineTerminator()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminatorAsBytes()[B

    move-result-object v1

    .line 326
    .local v1, "line":[B
    array-length v3, v1

    if-nez v3, :cond_0

    .line 332
    .end local v1    # "line":[B
    :goto_0
    return-object v2

    .line 329
    .restart local v1    # "line":[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 330
    .end local v1    # "line":[B
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStringTerminator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "terminator"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "lineCur":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineTerminator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
