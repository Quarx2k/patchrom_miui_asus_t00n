.class public Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
.super Ljava/lang/Object;
.source "BluetoothOppReceiveFileInfo.java"


# static fields
.field private static final D:Z = true

.field public static final OPP_LENGTH_OF_FILE_NAME:I = 0xf4

.field private static final V:Z

.field private static sDesiredStoragePath:Ljava/lang/String;


# instance fields
.field public mData:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mLength:J

.field public mOutputStream:Ljava/io/FileOutputStream;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "status"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mData:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 80
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "length"    # J
    .param p4, "outputStream"    # Ljava/io/FileOutputStream;
    .param p5, "status"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mFileName:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mOutputStream:Ljava/io/FileOutputStream;

    .line 87
    iput p5, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mStatus:I

    .line 88
    iput-wide p2, p0, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->mLength:J

    .line 89
    return-void
.end method

.method private static chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "fullfilename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    .line 282
    :goto_0
    return-object v5

    .line 258
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Random;-><init>(J)V

    .line 271
    .local v3, "rnd":Ljava/util/Random;
    const/4 v4, 0x1

    .line 272
    .local v4, "sequence":I
    const/4 v2, 0x1

    .local v2, "magnitude":I
    :goto_1
    const v5, 0x3b9aca00

    if-ge v2, v5, :cond_3

    .line 273
    const/4 v1, 0x0

    .local v1, "iteration":I
    :goto_2
    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    .line 276
    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 272
    :cond_2
    mul-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 282
    .end local v1    # "iteration":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static choosefilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hint"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 286
    const/4 v0, 0x0

    .line 289
    .local v0, "filename":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const/16 v2, 0x5c

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 294
    const-string v2, "\\s"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 297
    const-string v2, "[:\"<>*?|]"

    const-string v3, "_"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 300
    .local v1, "index":I
    if-lez v1, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 303
    .restart local v1    # "index":I
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static generateFileInfo(Landroid/content/Context;I)Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 99
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 100
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, "filename":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "hint":Ljava/lang/String;
    const/16 v22, 0x0

    .line 101
    .local v22, "mimeType":Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 102
    .local v19, "length":J
    const/16 v21, 0x0

    .line 104
    .local v21, "metadataCursor":Landroid/database/Cursor;
    const/4 v4, 0x3

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "hint"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string v9, "total_bytes"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string v9, "mimetype"

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 118
    :goto_0
    if-eqz v21, :cond_c

    .line 120
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 121
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 122
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 123
    .end local v19    # "length":J
    .local v6, "length":J
    const/4 v4, 0x2

    :try_start_2
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v22

    .line 126
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 128
    const/16 v21, 0x0

    .line 132
    :goto_2
    const/4 v10, 0x0

    .line 133
    .local v10, "base":Ljava/io/File;
    const/16 v26, 0x0

    .line 135
    .local v26, "stat":Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 137
    .local v25, "root":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .end local v10    # "base":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bluetooth"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v10    # "base":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receive File aborted - can\'t create base directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    .line 227
    .end local v25    # "root":Ljava/lang/String;
    :goto_3
    return-object v4

    .line 107
    .end local v6    # "length":J
    .end local v10    # "base":Ljava/io/File;
    .end local v26    # "stat":Landroid/os/StatFs;
    .restart local v19    # "length":J
    :catch_0
    move-exception v13

    .line 108
    .local v13, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v21, :cond_0

    .line 109
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    const/16 v21, 0x0

    .line 112
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateFileInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    .end local v13    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v13

    .line 114
    .local v13, "e":Landroid/database/CursorWindowAllocationException;
    const/16 v21, 0x0

    .line 115
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateFileInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .end local v13    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v4

    move-wide/from16 v6, v19

    .end local v19    # "length":J
    .restart local v6    # "length":J
    :goto_4
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 128
    const/16 v21, 0x0

    .line 126
    throw v4

    .line 143
    .restart local v10    # "base":Ljava/io/File;
    .restart local v25    # "root":Ljava/lang/String;
    .restart local v26    # "stat":Landroid/os/StatFs;
    :cond_1
    new-instance v26, Landroid/os/StatFs;

    .end local v26    # "stat":Landroid/os/StatFs;
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v26    # "stat":Landroid/os/StatFs;
    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual/range {v26 .. v26}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x4

    sub-long v28, v28, v30

    mul-long v8, v8, v28

    cmp-long v4, v8, v6

    if-gez v4, :cond_3

    .line 155
    const-string v4, "BluetoothOpp"

    const-string v8, "Receive File aborted - not enough free space"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ee

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto :goto_3

    .line 145
    .end local v25    # "root":Ljava/lang/String;
    :cond_2
    const-string v4, "BluetoothOpp"

    const-string v8, "Receive File aborted - no external storage"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ed

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 159
    .restart local v25    # "root":Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->choosefilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 160
    if-nez v15, :cond_4

    .line 162
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 164
    :cond_4
    const/4 v14, 0x0

    .line 165
    .local v14, "extension":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 166
    .local v12, "dotIndex":I
    if-gez v12, :cond_6

    .line 167
    if-nez v22, :cond_5

    .line 169
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 171
    :cond_5
    const-string v14, ""

    move-object/from16 v16, v15

    .line 178
    .end local v15    # "filename":Ljava/lang/String;
    .local v16, "filename":Ljava/lang/String;
    :goto_5
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v8, 0xf4

    if-le v4, v8, :cond_a

    .line 187
    :try_start_3
    const-string v4, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    .line 188
    .local v24, "oldfilename":[B
    const/16 v4, 0xf4

    new-array v0, v4, [B

    move-object/from16 v23, v0

    .line 189
    .local v23, "newfilename":[B
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v4, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    new-instance v15, Ljava/lang/String;

    const-string v4, "UTF-8"

    move-object/from16 v0, v23

    invoke-direct {v15, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 194
    .end local v16    # "filename":Ljava/lang/String;
    .end local v23    # "newfilename":[B
    .end local v24    # "oldfilename":[B
    .restart local v15    # "filename":Ljava/lang/String;
    :goto_6
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File name is too long. Name is truncated as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 199
    invoke-static {v15, v14}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->chooseUniquefilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "fullfilename":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->safeCanonicalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 203
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 174
    .end local v5    # "fullfilename":Ljava/lang/String;
    :cond_6
    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 175
    const/4 v4, 0x0

    invoke-virtual {v15, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    .end local v15    # "filename":Ljava/lang/String;
    .restart local v16    # "filename":Ljava/lang/String;
    goto :goto_5

    .line 191
    :catch_2
    move-exception v13

    .line 192
    .local v13, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    .end local v16    # "filename":Ljava/lang/String;
    .restart local v15    # "filename":Ljava/lang/String;
    goto :goto_6

    .line 207
    .end local v13    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "fullfilename":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_9

    .line 209
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 210
    const/16 v4, 0x2f

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v18, v4, 0x1

    .line 212
    .local v18, "index":I
    if-lez v18, :cond_8

    .line 213
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 215
    .local v11, "displayName":Ljava/lang/String;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v27, "updateValues":Landroid/content/ContentValues;
    const-string v4, "hint"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v3, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v27    # "updateValues":Landroid/content/ContentValues;
    :cond_8
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(Ljava/lang/String;JLjava/io/FileOutputStream;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 222
    .end local v18    # "index":I
    :catch_3
    move-exception v13

    .line 223
    .local v13, "e":Ljava/io/IOException;
    const-string v4, "BluetoothOpp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when creating file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 227
    .end local v13    # "e":Ljava/io/IOException;
    :cond_9
    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;

    const/16 v8, 0x1ec

    invoke-direct {v4, v8}, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;-><init>(I)V

    goto/16 :goto_3

    .line 126
    .end local v5    # "fullfilename":Ljava/lang/String;
    .end local v10    # "base":Ljava/io/File;
    .end local v12    # "dotIndex":I
    .end local v14    # "extension":Ljava/lang/String;
    .end local v25    # "root":Ljava/lang/String;
    .end local v26    # "stat":Landroid/os/StatFs;
    :catchall_1
    move-exception v4

    goto/16 :goto_4

    .end local v15    # "filename":Ljava/lang/String;
    .restart local v10    # "base":Ljava/io/File;
    .restart local v12    # "dotIndex":I
    .restart local v14    # "extension":Ljava/lang/String;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v25    # "root":Ljava/lang/String;
    .restart local v26    # "stat":Landroid/os/StatFs;
    :cond_a
    move-object/from16 v15, v16

    .end local v16    # "filename":Ljava/lang/String;
    .restart local v15    # "filename":Ljava/lang/String;
    goto/16 :goto_7

    .end local v6    # "length":J
    .end local v10    # "base":Ljava/io/File;
    .end local v12    # "dotIndex":I
    .end local v14    # "extension":Ljava/lang/String;
    .end local v25    # "root":Ljava/lang/String;
    .end local v26    # "stat":Landroid/os/StatFs;
    .restart local v19    # "length":J
    :cond_b
    move-wide/from16 v6, v19

    .end local v19    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_1

    .end local v6    # "length":J
    .restart local v19    # "length":J
    :cond_c
    move-wide/from16 v6, v19

    .end local v19    # "length":J
    .restart local v6    # "length":J
    goto/16 :goto_2
.end method

.method private static safeCanonicalPath(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uniqueFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 234
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "receiveFile":Ljava/io/File;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/bluetooth"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    .line 239
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "canonicalPath":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppReceiveFileInfo;->sDesiredStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 249
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "receiveFile":Ljava/io/File;
    :goto_0
    return v3

    .line 246
    .restart local v0    # "canonicalPath":Ljava/lang/String;
    .restart local v2    # "receiveFile":Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "receiveFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method
