.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;,
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$ContentType;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I = 0x0

.field private static final CCH:Ljava/lang/String; = "cch"

.field private static final CCH_PATH:Ljava/lang/String; = "/telecom/cch"

.field private static final D:Z = true

.field private static final ICH:Ljava/lang/String; = "ich"

.field private static final ICH_PATH:Ljava/lang/String; = "/telecom/ich"

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final MCH:Ljava/lang/String; = "mch"

.field private static final MCH_PATH:Ljava/lang/String; = "/telecom/mch"

.field private static final NEED_SEND_BODY:I = -0x1

.field private static final OCH:Ljava/lang/String; = "och"

.field private static final OCH_PATH:Ljava/lang/String; = "/telecom/och"

.field public static ORDER_BY_ALPHABETICAL:I = 0x0

.field public static ORDER_BY_INDEXED:I = 0x0

.field private static final PB:Ljava/lang/String; = "pb"

.field private static final PBAP_TARGET:[B

.field private static final PB_PATH:Ljava/lang/String; = "/telecom/pb"

.field private static final SIM1:Ljava/lang/String; = "SIM1"

.field private static final SIM_CCH_PATH:Ljava/lang/String; = "/SIM1/telecom/cch"

.field private static final SIM_ICH_PATH:Ljava/lang/String; = "/SIM1/telecom/ich"

.field private static final SIM_MCH_PATH:Ljava/lang/String; = "/SIM1/telecom/mch"

.field private static final SIM_OCH_PATH:Ljava/lang/String; = "/SIM1/telecom/och"

.field private static final SIM_PATH:Ljava/lang/String; = "/SIM1/telecom"

.field private static final SIM_PB_PATH:Ljava/lang/String; = "/SIM1/telecom/pb"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexServer"

.field private static final TYPE_LISTING:Ljava/lang/String; = "x-bt/vcard-listing"

.field private static final TYPE_PB:Ljava/lang/String; = "x-bt/phonebook"

.field private static final TYPE_VCARD:Ljava/lang/String; = "x-bt/vcard"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z = false

.field private static final VCARD_NAME_SUFFIX_LENGTH:I = 0x5

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 78
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "/telecom/ich"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/telecom/och"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/telecom/mch"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/ich"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/SIM1/telecom/och"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/SIM1/telecom/mch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/SIM1/telecom/cch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 155
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 157
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 159
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 161
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    .line 72
    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 142
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 153
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 179
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 180
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 181
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 182
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 5
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 1036
    const/4 v1, 0x1

    .line 1038
    .local v1, "returnvalue":Z
    if-eqz p0, :cond_0

    .line 1039
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1047
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1053
    :cond_1
    :goto_1
    return v1

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x0

    goto :goto_0

    .line 1049
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1050
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I
    .locals 13
    .param p1, "maxListCount"    # I
    .param p2, "listStartOffset"    # I
    .param p3, "searchValue"    # Ljava/lang/String;
    .param p4, "result"    # Ljava/lang/StringBuilder;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "SIM"    # Z

    .prologue
    .line 645
    const/4 v4, 0x0

    .line 646
    .local v4, "itemsFound":I
    const/4 v6, 0x0

    .line 648
    .local v6, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_2

    .line 649
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 653
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, p1, :cond_3

    move v9, p1

    .line 654
    .local v9, "requestSize":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 655
    .local v5, "listSize":I
    const-string v1, ""

    .line 657
    .local v1, "compareValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "search by "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", requestSize="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " searchValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v10, "number"

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 661
    const/4 v7, 0x0

    .line 663
    .local v7, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p6, :cond_4

    .line 664
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 668
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 669
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 670
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move v8, p2

    .local v8, "pos":I
    :goto_4
    if-ge v8, v5, :cond_5

    if-ge v4, v9, :cond_5

    .line 673
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 674
    .local v2, "currentValue":Ljava/lang/String;
    const-string v10, "BluetoothPbapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentValue="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 676
    add-int/lit8 v4, v4, 0x1

    .line 677
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 678
    const/4 v10, 0x0

    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 679
    :cond_0
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 672
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 651
    .end local v1    # "compareValue":Ljava/lang/String;
    .end local v2    # "currentValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "listSize":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    .end local v9    # "requestSize":I
    :cond_2
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    .line 653
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto/16 :goto_1

    .line 666
    .restart local v1    # "compareValue":Ljava/lang/String;
    .restart local v5    # "listSize":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "requestSize":I
    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_2

    .line 682
    .restart local v3    # "i":I
    .restart local v8    # "pos":I
    :cond_5
    if-lt v4, v9, :cond_7

    .line 702
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_6
    return v4

    .line 668
    .restart local v3    # "i":I
    .restart local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "pos":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 687
    .end local v3    # "i":I
    .end local v7    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "pos":I
    :cond_8
    if-eqz p3, :cond_9

    .line 688
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 690
    :cond_9
    move v8, p2

    .restart local v8    # "pos":I
    :goto_5
    if-ge v8, v5, :cond_6

    if-ge v4, v9, :cond_6

    .line 692
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    .restart local v2    # "currentValue":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 694
    const/4 v10, 0x0

    const/16 v11, 0x2c

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 696
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 697
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 698
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 691
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_5
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "selection":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1077
    :goto_0
    return-object v0

    .line 1065
    :pswitch_0
    const-string v0, "type=1"

    .line 1066
    goto :goto_0

    .line 1068
    :pswitch_1
    const-string v0, "type=2"

    .line 1069
    goto :goto_0

    .line 1071
    :pswitch_2
    const-string v0, "type=3"

    .line 1072
    goto :goto_0

    .line 1063
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 11
    .param p1, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p2, "size"    # I
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 758
    new-array v2, v7, [B

    .line 759
    .local v2, "misnum":[B
    new-instance v0, Ljavax/obex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 763
    .local v0, "ap":Ljavax/obex/ApplicationParameter;
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v6, :cond_2

    .line 765
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 767
    new-array v4, v8, [B

    .line 769
    .local v4, "pbsize":[B
    div-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 770
    rem-int/lit16 v6, p2, 0x100

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    .line 771
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v8, v4}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 774
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_0

    .line 775
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 776
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 777
    .local v3, "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 779
    if-lez v3, :cond_1

    .line 780
    :goto_0
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 781
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 783
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v3    # "nmnum":I
    :cond_0
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 788
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Send back Phonebook size only, without body info! Size= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0, p4, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v5

    .line 820
    .end local v4    # "pbsize":[B
    :goto_1
    return v5

    .restart local v3    # "nmnum":I
    .restart local v4    # "pbsize":[B
    :cond_1
    move v3, v5

    .line 779
    goto :goto_0

    .line 796
    .end local v3    # "nmnum":I
    .end local v4    # "pbsize":[B
    :cond_2
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v6, :cond_3

    .line 798
    iput-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 800
    iget v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v6

    .line 801
    .restart local v3    # "nmnum":I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 803
    if-lez v3, :cond_4

    .line 804
    :goto_2
    int-to-byte v6, v3

    aput-byte v6, v2, v5

    .line 805
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 807
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 808
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAppParaForResponse(): mNeedNewMissedCallsNum=true,  num= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_0
    invoke-interface {p4, p3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    .end local v3    # "nmnum":I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .restart local v3    # "nmnum":I
    :cond_4
    move v3, v5

    .line 803
    goto :goto_2

    .line 815
    :catch_0
    move-exception v1

    .line 816
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v5, 0xd0

    goto :goto_1
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 438
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1123
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :try_start_0
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :goto_0
    return-void

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 11
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    .prologue
    const/16 v10, 0x8

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "i":I
    const/4 v5, 0x1

    .line 505
    .local v5, "parseOk":Z
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_5

    .line 506
    aget-byte v6, p1, v1

    packed-switch v6, :pswitch_data_0

    .line 575
    const/4 v5, 0x0

    .line 576
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "Parse Application Parameter error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 509
    const-wide/16 v6, 0x0

    iput-wide v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, "index":I
    :goto_1
    if-ge v2, v10, :cond_0

    .line 512
    iget-wide v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    shl-long/2addr v6, v10

    add-int v8, v1, v2

    aget-byte v8, p1, v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 514
    :cond_0
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam filter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->filter:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    add-int/lit8 v1, v1, 0x8

    .line 516
    goto :goto_0

    .line 518
    .end local v2    # "index":I
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 519
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 520
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam order="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    add-int/lit8 v1, v1, 0x1

    .line 522
    goto :goto_0

    .line 524
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 526
    aget-byte v3, p1, v1

    .line 527
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 528
    const/4 v5, 0x0

    .line 529
    goto :goto_0

    .line 531
    :cond_1
    add-int v6, v1, v3

    aget-byte v6, p1, v6

    if-nez v6, :cond_2

    .line 532
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v3, -0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 536
    :goto_2
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam searchValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    add-int/2addr v1, v3

    .line 538
    add-int/lit8 v1, v1, 0x1

    .line 539
    goto/16 :goto_0

    .line 534
    :cond_2
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, p1, v7, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_2

    .line 541
    .end local v3    # "length":I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 542
    aget-byte v6, p1, v1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 543
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam searchAttr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    add-int/lit8 v1, v1, 0x1

    .line 545
    goto/16 :goto_0

    .line 547
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 548
    aget-byte v6, p1, v1

    if-nez v6, :cond_3

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    if-nez v6, :cond_3

    .line 549
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 555
    :goto_3
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam maxListCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    add-int/lit8 v1, v1, 0x2

    .line 557
    goto/16 :goto_0

    .line 551
    :cond_3
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 552
    .local v0, "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 553
    .local v4, "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_3

    .line 559
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 560
    aget-byte v6, p1, v1

    and-int/lit16 v0, v6, 0xff

    .line 561
    .restart local v0    # "highValue":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 562
    .restart local v4    # "lowValue":I
    mul-int/lit16 v6, v0, 0x100

    add-int/2addr v6, v4

    iput v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 563
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam listStartOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    add-int/lit8 v1, v1, 0x2

    .line 565
    goto/16 :goto_0

    .line 567
    .end local v0    # "highValue":I
    .end local v4    # "lowValue":I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 568
    aget-byte v6, p1, v1

    if-eqz v6, :cond_4

    .line 569
    const/4 v6, 0x0

    iput-boolean v6, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 571
    :cond_4
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppParam format="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 573
    goto/16 :goto_0

    .line 581
    :cond_5
    return v5

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 29
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 955
    if-eqz p5, :cond_0

    .line 956
    const-string v5, "."

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    .line 957
    .local v24, "dotIndex":I
    const-string v28, "vcf"

    .line 958
    .local v28, "vcf":Ljava/lang/String;
    if-ltz v24, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v24

    if-gt v0, v5, :cond_0

    .line 959
    add-int/lit8 v5, v24, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p5

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 960
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/16 v25, 0xc6

    .line 1030
    .end local v24    # "dotIndex":I
    .end local v28    # "vcf":Ljava/lang/String;
    :goto_0
    return v25

    .line 966
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v26

    .line 967
    .local v26, "pbSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v26

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v25

    .line 968
    .local v25, "needSendBody":I
    const/4 v5, -0x1

    move/from16 v0, v25

    if-eq v0, v5, :cond_1

    .line 969
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 970
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noEndofBody()V

    goto :goto_0

    .line 974
    :cond_1
    if-nez v26, :cond_2

    .line 976
    const/16 v25, 0xa0

    goto :goto_0

    .line 979
    :cond_2
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v0, v26

    if-lt v0, v5, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move/from16 v27, v0

    .line 981
    .local v27, "requestSize":I
    :goto_1
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 982
    .local v15, "startPoint":I
    if-ltz v15, :cond_3

    move/from16 v0, v26

    if-lt v15, v0, :cond_5

    .line 983
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/16 v25, 0xa0

    goto :goto_0

    .end local v15    # "startPoint":I
    .end local v27    # "requestSize":I
    :cond_4
    move/from16 v27, v26

    .line 979
    goto :goto_1

    .line 988
    .restart local v15    # "startPoint":I
    .restart local v27    # "requestSize":I
    :cond_5
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    .line 990
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v27

    if-le v0, v5, :cond_6

    .line 991
    sget v27, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 995
    :cond_6
    add-int v5, v15, v27

    add-int/lit8 v8, v5, -0x1

    .line 996
    .local v8, "endPoint":I
    add-int/lit8 v5, v26, -0x1

    if-le v8, v5, :cond_7

    .line 997
    add-int/lit8 v8, v26, -0x1

    .line 999
    :cond_7
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pullPhonebook(): requestSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " startPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " endPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 1003
    .local v9, "vcard21":Z
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 1004
    if-nez v15, :cond_9

    .line 1005
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v6

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;

    move-result-object v12

    .line 1006
    .local v12, "ownerVcard":Ljava/lang/String;
    if-nez v8, :cond_8

    .line 1007
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1009
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v10

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZJLjava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1013
    .end local v12    # "ownerVcard":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v14, p4

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v13 .. v20}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZJLjava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1016
    :cond_a
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_d

    .line 1017
    if-nez v15, :cond_c

    .line 1018
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v6

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;

    move-result-object v12

    .line 1019
    .restart local v12    # "ownerVcard":Ljava/lang/String;
    if-nez v8, :cond_b

    .line 1020
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1022
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v7, 0x1

    move-object/from16 v6, p4

    move-object v10, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1026
    .end local v12    # "ownerVcard":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move v7, v15

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v25

    goto/16 :goto_0

    .line 1030
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move/from16 v17, v0

    add-int/lit8 v19, v15, 0x1

    add-int/lit8 v20, v8, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v22

    move-object/from16 v18, p4

    move/from16 v21, v9

    invoke-virtual/range {v16 .. v23}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZJ)I

    move-result v25

    goto/16 :goto_0
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "op"    # Ljavax/obex/Operation;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "current_path"    # Ljava/lang/String;

    .prologue
    .line 888
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 889
    :cond_0
    const-string v2, "BluetoothPbapObexServer"

    const-string v3, "Name is Null, or the length of name < 5 !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v2, 0xc6

    .line 949
    :goto_0
    return v2

    .line 892
    :cond_1
    const/4 v2, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 893
    .local v17, "strIndex":Ljava/lang/String;
    const/4 v4, 0x0

    .line 894
    .local v4, "intIndex":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 896
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 903
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v16

    .line 904
    .local v16, "size":I
    if-nez v16, :cond_3

    .line 906
    const/16 v2, 0xc4

    goto :goto_0

    .line 897
    .end local v16    # "size":I
    :catch_0
    move-exception v14

    .line 898
    .local v14, "e":Ljava/lang/NumberFormatException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch number format exception "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v2, 0xc6

    goto :goto_0

    .line 909
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "size":I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 910
    .local v5, "vcard21":Z
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    if-nez v2, :cond_4

    .line 911
    const-string v2, "BluetoothPbapObexServer"

    const-string v3, "wrong path!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/16 v2, 0xc6

    goto :goto_0

    .line 913
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 914
    if-ltz v4, :cond_5

    move/from16 v0, v16

    if-lt v4, v0, :cond_6

    .line 915
    :cond_5
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 917
    :cond_6
    if-nez v4, :cond_7

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;

    move-result-object v15

    .line 920
    .local v15, "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 922
    .end local v15    # "ownerVcard":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v8

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IJ)I

    move-result v2

    goto/16 :goto_0

    .line 925
    :cond_8
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 926
    if-ltz v4, :cond_9

    move/from16 v0, v16

    if-lt v4, v0, :cond_a

    .line 927
    :cond_9
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 929
    :cond_a
    if-nez v4, :cond_b

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;

    move-result-object v15

    .line 932
    .restart local v15    # "ownerVcard":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 934
    .end local v15    # "ownerVcard":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    .line 938
    :cond_c
    if-lez v4, :cond_d

    move/from16 v0, v16

    if-le v4, v0, :cond_e

    .line 939
    :cond_d
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The requested vcard is not acceptable! name= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 944
    :cond_e
    const/4 v2, 0x1

    if-lt v4, v2, :cond_f

    .line 945
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->getActualFilter()J

    move-result-wide v12

    move-object/from16 v8, p3

    move v9, v4

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZJ)I

    move-result v2

    goto/16 :goto_0

    .line 949
    :cond_f
    const/16 v2, 0xa0

    goto/16 :goto_0
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 15
    .param p1, "appParam"    # [B
    .param p2, "appParamValue"    # Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    .param p3, "reply"    # Ljavax/obex/HeaderSet;
    .param p4, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 825
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 827
    .local v12, "searchAttr":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 829
    :cond_0
    const-string v3, "0"

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 830
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "searchAttr is not set by PCE, assume search by name by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v14

    .line 844
    .local v14, "size":I
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {p0, v0, v14, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v10

    .line 845
    .local v10, "needSendBody":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_4

    .line 846
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 847
    invoke-interface/range {p4 .. p4}, Ljavax/obex/Operation;->noEndofBody()V

    .line 883
    .end local v10    # "needSendBody":I
    .end local v14    # "size":I
    :goto_1
    return v10

    .line 831
    :cond_1
    const-string v3, "0"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 832
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "search attr not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const-string v3, "2"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 835
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "do not support search by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/16 v10, 0xd1

    goto :goto_1

    .line 838
    :cond_2
    const/16 v10, 0xcc

    goto :goto_1

    .line 840
    :cond_3
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAttr is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    .restart local v10    # "needSendBody":I
    .restart local v14    # "size":I
    :cond_4
    if-nez v14, :cond_5

    .line 853
    const/16 v10, 0xa0

    goto :goto_1

    .line 856
    :cond_5
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 857
    .local v11, "orderPara":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 859
    const-string v11, "0"

    .line 860
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Order parameter is not set by PCE. Assume order by \'Indexed\' by default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_2
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 875
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 880
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "sendResult":I
    move v10, v13

    .line 883
    goto/16 :goto_1

    .line 862
    .end local v13    # "sendResult":I
    :cond_7
    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 864
    const-string v3, "2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 866
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Do not support order by sound"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v10, 0xd1

    goto/16 :goto_1

    .line 869
    :cond_8
    const/16 v10, 0xcc

    goto/16 :goto_1

    .line 871
    :cond_9
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Order parameter is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 876
    :cond_a
    const-string v3, "1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 877
    sget v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto :goto_3
.end method

.method private final pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 6
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "vcardString"    # Ljava/lang/String;

    .prologue
    .line 733
    if-nez p2, :cond_1

    .line 734
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "vcardString is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v2, 0xa0

    .line 753
    :cond_0
    :goto_0
    return v2

    .line 738
    :cond_1
    const/4 v1, 0x0

    .line 739
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 741
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 742
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_1
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 750
    const/16 v2, 0xd0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open/write outputstrem failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/16 v2, 0xd0

    goto :goto_1
.end method

.method private final pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 5
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 712
    .local v1, "outputStream":Ljava/io/OutputStream;
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "Push Header"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v2, 0xa0

    .line 717
    .local v2, "pushResult":I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 718
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 725
    :goto_0
    const/16 v2, 0xd0

    .line 728
    :cond_0
    return v2

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    const/16 v2, 0xd0

    .line 724
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 725
    const/16 v2, 0xd0

    .line 724
    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "maxListCount"    # I
    .param p4, "listStartOffset"    # I
    .param p5, "searchValue"    # Ljava/lang/String;
    .param p6, "searchAttr"    # Ljava/lang/String;

    .prologue
    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 590
    .local v9, "itemsFound":I
    const/4 v7, 0x0

    .line 591
    .local v7, "SIM":Z
    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v1, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 597
    const-string v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const-string v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    .line 636
    :cond_0
    :goto_0
    const-string v1, "</vCard-listing>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v1

    :goto_1
    return v1

    .line 600
    :cond_1
    const-string v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    const-string v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 605
    :cond_2
    const/16 v1, 0xcc

    goto :goto_1

    .line 608
    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 609
    const/4 v7, 0x1

    .line 610
    const-string v1, "0"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 611
    const-string v6, "name"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 613
    :cond_4
    const-string v1, "1"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 614
    const-string v6, "number"

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Z)I

    move-result v9

    goto :goto_0

    .line 618
    :cond_5
    const/16 v1, 0xcc

    goto :goto_1

    .line 623
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(I)Ljava/util/ArrayList;

    move-result-object v11

    .line 624
    .local v11, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_8

    move/from16 v12, p3

    .line 625
    .local v12, "requestSize":I
    :goto_2
    move/from16 v13, p4

    .line 626
    .local v13, "startPoint":I
    add-int v8, v13, v12

    .line 627
    .local v8, "endPoint":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v8, v1, :cond_7

    .line 628
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 630
    :cond_7
    const-string v1, "BluetoothPbapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call log list, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move v10, v13

    .local v10, "j":I
    :goto_3
    if-ge v10, v8, :cond_0

    .line 633
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 632
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 624
    .end local v8    # "endPoint":I
    .end local v10    # "j":I
    .end local v12    # "requestSize":I
    .end local v13    # "startPoint":I
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_2
.end method

.method private writeVCardEntry(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "vcfIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1115
    const-string v0, "<card handle=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1117
    const-string v0, ".vcf\" name=\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1119
    const-string v0, "\"/>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    return-void
.end method

.method private xmlEncode(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1084
    if-nez p1, :cond_1

    .line 1112
    :cond_0
    return-void

    .line 1088
    :cond_1
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 1090
    .local v0, "character":C
    :goto_0
    const v2, 0xffff

    if-eq v0, v2, :cond_0

    .line 1091
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    .line 1092
    const-string v2, "&lt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 1094
    :cond_2
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 1095
    const-string v2, "&gt;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1097
    :cond_3
    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    .line 1098
    const-string v2, "&quot;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1100
    :cond_4
    const/16 v2, 0x27

    if-ne v0, v2, :cond_5

    .line 1101
    const-string v2, "&#039;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1103
    :cond_5
    const/16 v2, 0x26

    if-ne v0, v2, :cond_6

    .line 1104
    const-string v2, "&amp;"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1108
    :cond_6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 247
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 249
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    .prologue
    .line 1059
    return-void
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 188
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 189
    .local v5, "uuid":[B
    if-nez v5, :cond_0

    move v6, v7

    .line 228
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 192
    .restart local v5    # "uuid":[B
    :cond_0
    const-string v6, "BluetoothPbapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    array-length v6, v5

    if-eq v6, v11, :cond_1

    .line 195
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 199
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 200
    const-string v6, "BluetoothPbapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 201
    goto :goto_0

    .line 198
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 212
    .local v4, "remote":[B
    if-eqz v4, :cond_4

    .line 213
    const-string v6, "BluetoothPbapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 225
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 226
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 228
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 205
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 207
    goto/16 :goto_0

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_1
    move-exception v1

    .line 217
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 218
    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 233
    const-string v1, "BluetoothPbapObexServer"

    const-string v2, "onDisconnect(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 237
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 240
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 18
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 314
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 315
    const/4 v15, 0x0

    .line 316
    .local v15, "request":Ljavax/obex/HeaderSet;
    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    .line 317
    .local v10, "reply":Ljavax/obex/HeaderSet;
    const-string v16, ""

    .line 318
    .local v16, "type":Ljava/lang/String;
    const-string v6, ""

    .line 319
    .local v6, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 320
    .local v3, "appParam":[B
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 322
    .local v4, "appParamValue":Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v15

    .line 323
    const/16 v2, 0x42

    invoke-virtual {v15, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 324
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 325
    const/16 v2, 0x4c

    invoke-virtual {v15, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnGet type is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; name is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-nez v16, :cond_0

    .line 335
    const/16 v2, 0xc6

    .line 428
    :goto_0
    return v2

    .line 326
    :catch_0
    move-exception v14

    .line 327
    .local v14, "e":Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "request headers error"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/16 v2, 0xd0

    goto :goto_0

    .line 345
    .end local v14    # "e":Ljava/io/IOException;
    :cond_0
    const/16 v17, 0x1

    .line 346
    .local v17, "validName":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    const/16 v17, 0x0

    .line 350
    :cond_1
    if-eqz v17, :cond_2

    if-eqz v17, :cond_d

    const-string v2, "x-bt/vcard"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 351
    :cond_2
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Guess what carkit actually want from current path ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 371
    :goto_1
    const-string v2, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGet(): appParamValue.needTag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_2
    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 412
    const/16 v2, 0xc0

    goto :goto_0

    .line 356
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/ich"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 357
    :cond_4
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 358
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/och"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 359
    :cond_6
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 360
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/mch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 361
    :cond_8
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 362
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_1

    .line 363
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/cch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 364
    :cond_a
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 365
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom/pb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 366
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 368
    :cond_c
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "mCurrentpath is not valid path!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v2, 0xc6

    goto/16 :goto_0

    .line 375
    :cond_d
    move-object v13, v6

    .line 376
    .local v13, "Filename":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 377
    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 378
    const/4 v2, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v13, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v13, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 381
    :cond_e
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "SIM1"

    const/4 v5, 0x0

    const-string v7, "SIM1"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "x-bt/phonebook"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    const-string v5, "/SIM1/telecom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "x-bt/vcard-listing"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 387
    :cond_10
    const/4 v2, 0x6

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 388
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download SIM phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 389
    :cond_11
    const-string v2, "pb"

    const/4 v5, 0x0

    const-string v7, "pb"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 390
    const/4 v2, 0x1

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 391
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download phonebook request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 392
    :cond_12
    const-string v2, "ich"

    const/4 v5, 0x0

    const-string v7, "ich"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 393
    const/4 v2, 0x2

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 394
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download incoming calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 395
    :cond_13
    const-string v2, "och"

    const/4 v5, 0x0

    const-string v7, "och"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 396
    const/4 v2, 0x3

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 397
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download outgoing calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 398
    :cond_14
    const-string v2, "mch"

    const/4 v5, 0x0

    const-string v7, "mch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 399
    const/4 v2, 0x4

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 400
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 401
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download missed calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 402
    :cond_15
    const-string v2, "cch"

    const/4 v5, 0x0

    const-string v7, "cch"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 403
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 404
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "download combined calls request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 406
    :cond_16
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "Input name doesn\'t contain valid info!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v2, 0xc4

    goto/16 :goto_0

    .line 416
    .end local v13    # "Filename":Ljava/lang/String;
    :cond_17
    const-string v2, "x-bt/vcard-listing"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v2

    goto/16 :goto_0

    .line 420
    :cond_18
    const-string v2, "x-bt/vcard"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 421
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 424
    :cond_19
    const-string v2, "x-bt/phonebook"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object/from16 v11, p1

    move-object v12, v6

    .line 425
    invoke-direct/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 427
    :cond_1a
    const-string v2, "BluetoothPbapObexServer"

    const-string v5, "unknown type request!!!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v2, 0xc6

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 2
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 254
    const-string v0, "BluetoothPbapObexServer"

    const-string v1, "onPut(): not support PUT request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 7
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    .line 262
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before setPath, mCurrentPath ==  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 265
    .local v1, "current_path_tmp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, "tmp_path":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const-string v4, "BluetoothPbapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p3, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 288
    if-eqz p4, :cond_3

    .line 289
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path create is forbidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v4, 0xc3

    .line 299
    :goto_1
    return v4

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "Get name header fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v4, 0xd0

    goto :goto_1

    .line 280
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    if-nez v3, :cond_2

    .line 281
    const-string v1, ""

    goto :goto_0

    .line 283
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_3
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path is not legal"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v4, 0xc4

    goto :goto_1

    .line 296
    :cond_4
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 299
    const/16 v4, 0xa0

    goto :goto_1
.end method
