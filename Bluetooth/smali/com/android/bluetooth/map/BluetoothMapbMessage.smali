.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$1;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    }
.end annotation


# static fields
.field protected static final D:Z = true

.field public static INVALID_VALUE:I = 0x0

.field protected static TAG:Ljava/lang/String; = null

.field protected static final V:Z = true

.field private static final VERSION:Ljava/lang/String; = "VERSION:1.0"


# instance fields
.field protected appParamCharset:I

.field private bMsgLength:I

.field protected charset:Ljava/lang/String;

.field protected encoding:Ljava/lang/String;

.field private folder:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private originator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private partId:J

.field private recipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field protected type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "BluetoothMapbMessage"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->appParamCharset:I

    .line 47
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 50
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 53
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->partId:J

    .line 54
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->language:Ljava/lang/String;

    .line 58
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    .line 60
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 61
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 438
    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 24
    .param p0, "bMsgStream"    # Ljava/io/InputStream;
    .param p1, "appParamCharset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 442
    const-string v10, ""

    .line 443
    .local v10, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 444
    .local v11, "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    const/16 v16, 0x0

    .line 445
    .local v16, "status":Z
    const/16 v17, 0x0

    .line 446
    .local v17, "statusFound":Z
    const/16 v18, 0x0

    .line 447
    .local v18, "type":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v8, 0x0

    .line 455
    .local v8, "folder":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    .line 456
    .local v15, "sdCard":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/bluetooth/log/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v4, "dir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 458
    new-instance v7, Ljava/io/File;

    const-string v21, "receivedBMessage.txt"

    move-object/from16 v0, v21

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    .local v7, "file":Ljava/io/File;
    const/4 v12, 0x0

    .line 460
    .local v12, "outStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 461
    .local v6, "failed":Z
    const/16 v20, 0x0

    .line 464
    .local v20, "writtenLen":I
    :try_start_0
    new-instance v13, Ljava/io/FileOutputStream;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v13, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .local v13, "outStream":Ljava/io/FileOutputStream;
    const/16 v21, 0x1000

    :try_start_1
    move/from16 v0, v21

    new-array v3, v0, [B

    .line 467
    .local v3, "buffer":[B
    const/4 v9, 0x0

    .line 468
    .local v9, "len":I
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_0

    .line 469
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v3, v0, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    add-int v20, v20, v9

    goto :goto_0

    .line 479
    :cond_0
    if-eqz v13, :cond_14

    .line 481
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v13

    .line 487
    .end local v3    # "buffer":[B
    .end local v9    # "len":I
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    if-eqz v6, :cond_4

    .line 488
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 482
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "len":I
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v21

    move-object v12, v13

    .line 483
    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 472
    .end local v3    # "buffer":[B
    .end local v9    # "len":I
    :catch_1
    move-exception v5

    .line 473
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "Unable to create output stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 479
    if-eqz v12, :cond_1

    .line 481
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 482
    :catch_2
    move-exception v21

    goto :goto_1

    .line 474
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 475
    .local v5, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "Failed to copy the received message"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 476
    if-eqz v20, :cond_2

    .line 477
    const/4 v6, 0x1

    .line 479
    :cond_2
    if-eqz v12, :cond_1

    .line 481
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 482
    :catch_4
    move-exception v21

    goto :goto_1

    .line 479
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    :goto_4
    if-eqz v12, :cond_3

    .line 481
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 483
    :cond_3
    :goto_5
    throw v21

    .line 491
    :cond_4
    if-nez v12, :cond_6

    .line 508
    :goto_6
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "The incoming bMessage have been dumped to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v14, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    .line 512
    .local v14, "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    const-string v21, "BEGIN:BMSG"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    .line 513
    const-string v21, "VERSION"

    const-string v22, "1.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    .line 517
    :goto_7
    const-string v21, "BEGIN:VCARD"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string v21, "BEGIN:BENV"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 518
    const-string v21, "STATUS"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 519
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "arg":[Ljava/lang/String;
    if-eqz v2, :cond_9

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 521
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "READ"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 522
    const/16 v16, 0x1

    .line 532
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_5
    :goto_8
    const-string v21, "TYPE"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 533
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 534
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_d

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 535
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 536
    .local v19, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v18

    .line 537
    if-nez p1, :cond_a

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 539
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Native appParamsCharset only supported for SMS"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 496
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .end local v19    # "value":Ljava/lang/String;
    :cond_6
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 502
    :goto_9
    :try_start_9
    new-instance p0, Ljava/io/FileInputStream;

    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 503
    .end local p0    # "bMsgStream":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    .line 504
    .local v5, "e":Ljava/io/FileNotFoundException;
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "Failed to open the bMessage file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 523
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "arg":[Ljava/lang/String;
    .restart local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local p0    # "bMsgStream":Ljava/io/InputStream;
    :cond_7
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UNREAD"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 524
    const/16 v16, 0x0

    goto :goto_8

    .line 526
    :cond_8
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Wrong value in \'STATUS\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v2, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 529
    :cond_9
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Missing value for \'STATUS\': "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 541
    .restart local v19    # "value":Ljava/lang/String;
    :cond_a
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 557
    .end local v2    # "arg":[Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_b
    :goto_a
    const-string v21, "FOLDER"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 558
    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 559
    .restart local v2    # "arg":[Ljava/lang/String;
    if-eqz v2, :cond_c

    array-length v0, v2

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 560
    const/16 v21, 0x1

    aget-object v21, v2, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 564
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_c
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 544
    .restart local v2    # "arg":[Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :pswitch_0
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    .end local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 545
    .restart local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_a

    .line 548
    :pswitch_1
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;

    .end local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    invoke-direct {v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageMmsEmail;-><init>()V

    .line 549
    .restart local v11    # "newBMsg":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    goto :goto_a

    .line 554
    .end local v19    # "value":Ljava/lang/String;
    :cond_d
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Missing value for \'TYPE\':"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 566
    .end local v2    # "arg":[Ljava/lang/String;
    :cond_e
    if-nez v11, :cond_f

    .line 567
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 568
    :cond_f
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 569
    move/from16 v0, p1

    iput v0, v11, Lcom/android/bluetooth/map/BluetoothMapbMessage;->appParamCharset:I

    .line 570
    if-eqz v8, :cond_10

    .line 571
    invoke-virtual {v11, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    .line 572
    :cond_10
    if-eqz v17, :cond_11

    .line 573
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    .line 576
    :cond_11
    :goto_b
    const-string v21, "BEGIN:VCARD"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 577
    sget-object v21, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v22, "Decoding vCard"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V

    .line 579
    invoke-virtual {v14}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    .line 581
    :cond_12
    const-string v21, "BEGIN:BENV"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 582
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v11, v14, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 591
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 596
    :goto_c
    return-object v11

    .line 584
    :cond_13
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 482
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    :catch_6
    move-exception v22

    goto/16 :goto_5

    .line 497
    :catch_7
    move-exception v21

    goto/16 :goto_9

    .line 592
    .restart local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    :catch_8
    move-exception v21

    goto :goto_c

    .line 479
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .end local v14    # "reader":Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v21

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 474
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 472
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v5

    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "len":I
    .restart local v13    # "outStream":Ljava/io/FileOutputStream;
    :cond_14
    move-object v12, v13

    .end local v13    # "outStream":Ljava/io/FileOutputStream;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 12
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 628
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    .line 629
    .local v5, "line":Ljava/lang/String;
    :goto_0
    const-string v7, "END:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 630
    const-string v7, "PARTID:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 631
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "arg":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v7, v0

    if-ne v7, v11, :cond_1

    .line 634
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->partId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 635
    .restart local v0    # "arg":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 636
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong value in \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 639
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'PARTID\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 642
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_2
    const-string v7, "ENCODING:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 643
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 644
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v7, v0

    if-ne v7, v11, :cond_3

    .line 645
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 647
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'ENCODING\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 650
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_4
    const-string v7, "CHARSET:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 651
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 652
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v7, v0

    if-ne v7, v11, :cond_5

    .line 653
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    goto/16 :goto_1

    .line 655
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'CHARSET\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 658
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_6
    const-string v7, "LANGUAGE:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 659
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 660
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v7, v0

    if-ne v7, v11, :cond_7

    .line 661
    aget-object v7, v0, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->language:Ljava/lang/String;

    goto/16 :goto_1

    .line 663
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'LANGUAGE\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 666
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_8
    const-string v7, "LENGTH:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 667
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 668
    .restart local v0    # "arg":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v7, v0

    if-ne v7, v11, :cond_9

    .line 670
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 671
    :catch_1
    move-exception v3

    .line 672
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong value in \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 675
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing value for \'LENGTH\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 678
    .end local v0    # "arg":[Ljava/lang/String;
    :cond_a
    const-string v7, "BEGIN:MSG"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    iget v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    sget v8, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    if-ne v7, v8, :cond_b

    .line 680
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 689
    :cond_b
    const-string v7, "END:MSG"

    invoke-virtual {p1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "data":Ljava/lang/String;
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MsgLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->bMsgLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data.getBytes().length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v7, "\\n"

    const-string v8, "<LF>\n"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "debug":Ljava/lang/String;
    const-string v7, "\\r"

    const-string v8, "<CR>"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The line: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v7, "\\n"

    const-string v8, "<LF>\n"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 697
    const-string v7, "\\r"

    const-string v8, "<CR>"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The msgString: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v7, "\r\nEND:MSG\r\n"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 707
    .local v6, "messages":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    .line 708
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v7, v6

    if-ge v4, v7, :cond_0

    .line 709
    aget-object v7, v6, v4

    const-string v8, "^BEGIN:MSG\r\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 710
    aget-object v7, v6, v4

    const-string v8, "\r\n([/]*)/END\\:MSG"

    const-string v9, "\r\n$1END:MSG"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 711
    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 712
    aget-object v7, v6, v4

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    .line 708
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 717
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "debug":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "messages":[Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 4
    .param p1, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p2, "level"    # I

    .prologue
    .line 601
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "line":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoding envelope level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoding recipient vCard level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_1
    const-string v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v2, "Decoding nested envelope"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    .line 615
    :cond_2
    const-string v1, "BEGIN:BBODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v2, "Decoding bbody"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_4

    .line 620
    const-string v1, "END:BBODY"

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBodyEmail(Ljava/lang/String;)V

    .line 624
    :cond_3
    :goto_1
    return-void

    .line 622
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    goto :goto_1
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "originator"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 858
    .local v4, "out":[B
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decoding binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    array-length v3, v4

    .local v3, "n":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 861
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 862
    .local v6, "value":Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    .line 859
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_0

    .line 865
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 866
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    array-length v3, v4

    :goto_1
    if-ge v0, v3, :cond_1

    .line 868
    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-byte v10, v4, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 870
    :cond_1
    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decoded binary data: START:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-object v4
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5
    .param p1, "pduData"    # [B
    .param p2, "scAddressData"    # [B

    .prologue
    const/16 v4, 0x10

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 837
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 838
    aget-byte v2, p2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 842
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 847
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 879
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, "BEGIN:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v9, "VERSION:1.0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v9, "STATUS:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v9, "TYPE:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x200

    if-le v9, v10, :cond_0

    .line 884
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, -0x200

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :goto_0
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 888
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 889
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 886
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v9, "FOLDER:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 895
    :cond_1
    const-string v9, "BEGIN:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 897
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .line 898
    .restart local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    invoke-virtual {v1, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 900
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v9, "BEGIN:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_3

    .line 902
    const-string v9, "ENCODING:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_3
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_4

    .line 904
    const-string v9, "CHARSET:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->charset:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_4
    const/4 v4, 0x0

    .line 909
    .local v4, "length":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 910
    .local v2, "fragment":[B
    array-length v9, v2

    add-int/lit8 v9, v9, 0x16

    add-int/2addr v4, v9

    .line 911
    goto :goto_3

    .line 912
    .end local v2    # "fragment":[B
    :cond_5
    const-string v9, "LENGTH:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 917
    .local v6, "msgStart":[B
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    const/16 v9, 0x1f

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 918
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    const-string v9, "END:BBODY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string v9, "END:BENV"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v9, "END:BMSG"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 926
    .local v5, "msgEnd":[B
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v9, v6

    array-length v10, v5

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 927
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v8, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 929
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 930
    .restart local v2    # "fragment":[B
    const-string v9, "BEGIN:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 931
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 932
    const-string v9, "\r\nEND:MSG\r\n"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 938
    .end local v2    # "fragment":[B
    .end local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    const/4 v9, 0x0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-object v9

    .line 934
    .restart local v8    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :try_start_1
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 936
    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_5
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->originator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public parseBodyEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 731
    return-void
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->encoding:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->folder:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1
    .param p1, "recipient"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->recipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public setStatus(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    const-string v0, "READ"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    .line 739
    :goto_0
    return-void

    .line 738
    :cond_0
    const-string v0, "UNREAD"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->type:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 743
    return-void
.end method
