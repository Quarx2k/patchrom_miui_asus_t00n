.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CALLLOG_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field static final CONTACTS_ALT_NAME_COLUMN_INDEX:I = 0x2

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_PRIM_NAME_COLUMN_INDEX:I = 0x1

.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field private static final SIM_NAME_COLUMN_INDEX:I = 0x0

.field private static final SIM_NUMBER_COLUMN_INDEX:I = 0x1

.field static final SIM_PROJECTION:[Ljava/lang/String;

.field static final SORT_ORDER_PHONE_NUMBER:Ljava/lang/String; = "data1 ASC"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardManager"

.field private static final V:Z


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    .line 98
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_URI:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 119
    return-void
.end method

.method private getDisplayNameColumn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "android.contacts.DISPLAY_ORDER"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, "order":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v1, "display_name_alt"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "display_name"

    goto :goto_0
.end method

.method private getDisplayNameColumnIndex()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 323
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "android.contacts.DISPLAY_ORDER"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, "order":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private final getOwnerPhoneNumberVcardFromProfile(ZJ)Ljava/lang/String;
    .locals 2
    .param p1, "vcardType21"    # Z
    .param p2, "filter"    # J

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/high16 v0, -0x40000000    # -2.0f

    .line 135
    .local v0, "vcardType":I
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createProfileVCard(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "vcardType":I
    :cond_0
    const v0, -0x3fffffff    # -2.0000002f

    .restart local v0    # "vcardType":I
    goto :goto_0
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZJ)I
    .locals 22
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/obex/Operation;
    .param p3, "startPoint"    # I
    .param p4, "endPoint"    # I
    .param p5, "vcardType21"    # Z
    .param p6, "filter"    # J

    .prologue
    .line 511
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 512
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v2, 0xd0

    .line 570
    :goto_0
    return v2

    .line 515
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "typeSelection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 518
    .local v3, "myUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 521
    .local v4, "CALLLOG_PROJECTION":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 523
    .local v14, "ID_COLUMN_INDEX":I
    const/4 v15, 0x0

    .line 524
    .local v15, "callsCursor":Landroid/database/Cursor;
    const-wide/16 v20, 0x0

    .line 525
    .local v20, "startPointId":J
    const-wide/16 v17, 0x0

    .line 528
    .local v17, "endPointId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 530
    if-eqz v15, :cond_2

    .line 531
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 534
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 535
    move-wide/from16 v17, v20

    .line 545
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 546
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 547
    :goto_2
    const/4 v15, 0x0

    .line 552
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 562
    .local v19, "recordSelection":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_7

    .line 563
    move-object/from16 v8, v19

    .line 570
    .local v8, "selection":Ljava/lang/String;
    :goto_4
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 537
    .end local v8    # "selection":Ljava/lang/String;
    .end local v19    # "recordSelection":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 538
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v17

    goto :goto_1

    .line 542
    :catch_0
    move-exception v16

    .line 543
    .local v16, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "CursorWindowAllocationException while composing calllog vcards"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    if-eqz v15, :cond_3

    .line 546
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 545
    .end local v16    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 546
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 547
    const/4 v15, 0x0

    .line 545
    :cond_5
    throw v2

    .line 557
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "recordSelection":Ljava/lang/String;
    goto :goto_3

    .line 565
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selection":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IJ)I
    .locals 15
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I
    .param p6, "filter"    # J

    .prologue
    .line 666
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 667
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/16 v1, 0xd0

    .line 716
    :goto_0
    return v1

    .line 670
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 671
    .local v2, "myUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 672
    .local v11, "contactCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 673
    .local v5, "selection":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 674
    .local v12, "contactId":J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5    # "selection":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 678
    if-eqz v11, :cond_1

    .line 679
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 680
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 686
    :cond_1
    if-eqz v11, :cond_2

    .line 687
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 688
    :goto_1
    const/4 v11, 0x0

    .line 712
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 716
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v10, 0x1

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move-wide/from16 v7, p6

    move-object/from16 v9, p4

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v1

    goto :goto_0

    .line 683
    .end local v5    # "selection":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 684
    .local v14, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "CursorWindowAllocationException while composing phonebook one vcard order by index"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    if-eqz v11, :cond_2

    .line 687
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 686
    .end local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 687
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 688
    const/4 v11, 0x0

    .line 686
    :cond_3
    throw v1

    .line 691
    .restart local v5    # "selection":Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 693
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumn()Ljava/lang/String;

    .end local v5    # "selection":Ljava/lang/String;
    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 695
    if-eqz v11, :cond_5

    .line 696
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 697
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v12

    .line 703
    :cond_5
    if-eqz v11, :cond_2

    .line 704
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 705
    :goto_3
    const/4 v11, 0x0

    goto :goto_2

    .line 700
    :catch_1
    move-exception v14

    .line 701
    .restart local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :try_start_3
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "CursorWindowAllocationException while composing phonebook one vcard order by alphabetical"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 703
    if-eqz v11, :cond_2

    .line 704
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 703
    .end local v14    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_6

    .line 704
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 705
    const/4 v11, 0x0

    .line 703
    :cond_6
    throw v1

    .line 709
    .restart local v5    # "selection":Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZJLjava/lang/String;)I
    .locals 18
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "filter"    # J
    .param p7, "ownerVCard"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 576
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v2, 0xd0

    .line 618
    :goto_0
    return v2

    .line 579
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 581
    .local v3, "myUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 582
    .local v12, "contactCursor":Landroid/database/Cursor;
    const-wide/16 v16, 0x0

    .line 583
    .local v16, "startPointId":J
    const-wide/16 v14, 0x0

    .line 585
    .local v14, "endPointId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 587
    if-eqz v12, :cond_2

    .line 588
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 589
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 591
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 592
    move-wide/from16 v14, v16

    .line 602
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 604
    :goto_2
    const/4 v12, 0x0

    .line 609
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 618
    .local v6, "selection":Ljava/lang/String;
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 594
    .end local v6    # "selection":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 595
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    goto :goto_1

    .line 599
    :catch_0
    move-exception v13

    .line 600
    .local v13, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_2
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "CursorWindowAllocationException while composing phonebook vcards"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    if-eqz v12, :cond_3

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 602
    .end local v13    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v12, 0x0

    .line 602
    :cond_5
    throw v2

    .line 612
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "selection":Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .locals 10
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I

    .prologue
    const/16 v6, 0xd0

    const/4 v7, 0x1

    .line 721
    if-ge p2, v7, :cond_1

    .line 722
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "Internal error: offset is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    .end local p1    # "op":Ljavax/obex/Operation;
    :cond_0
    :goto_0
    return v6

    .line 725
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_1
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 727
    .local v4, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 728
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 730
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 731
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 732
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 755
    :cond_2
    if-eqz v3, :cond_3

    .line 756
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 758
    :cond_3
    if-eqz v1, :cond_0

    .line 759
    .end local p1    # "op":Ljavax/obex/Operation;
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 736
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_4
    :try_start_3
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p5, v7, :cond_8

    .line 738
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 743
    :cond_5
    :goto_2
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_6

    .line 744
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 745
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 747
    :cond_6
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v5

    .line 748
    .local v5, "vcard":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 749
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    if-eqz v3, :cond_7

    .line 756
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 758
    :cond_7
    if-eqz v1, :cond_0

    goto :goto_1

    .line 739
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_8
    :try_start_4
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p5, v7, :cond_5

    .line 741
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 755
    .end local p1    # "op":Ljavax/obex/Operation;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :goto_3
    if-eqz v2, :cond_9

    .line 756
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 758
    :cond_9
    if-eqz v0, :cond_a

    .line 759
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 755
    :cond_a
    throw v6

    .line 753
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v5    # "vcard":Ljava/lang/String;
    :cond_b
    :try_start_5
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 755
    if-eqz v3, :cond_c

    .line 756
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 758
    :cond_c
    if-eqz v1, :cond_d

    .line 759
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 763
    :cond_d
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 755
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .locals 10
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "ownerVCard"    # Ljava/lang/String;

    .prologue
    .line 622
    const/4 v7, 0x1

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_2

    .line 623
    :cond_0
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "internal error: startPoint or endPoint is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 v7, 0xd0

    .line 661
    .end local p1    # "op":Ljavax/obex/Operation;
    :cond_1
    :goto_0
    return v7

    .line 626
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_2
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 627
    .local v5, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 628
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 630
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 633
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_5

    .line 635
    :cond_3
    const/16 v7, 0xd0

    .line 653
    if-eqz v3, :cond_4

    .line 654
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 656
    :cond_4
    if-eqz v1, :cond_1

    .line 657
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 637
    :cond_5
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 638
    add-int/lit8 v4, p2, -0x1

    .local v4, "count":I
    :goto_2
    if-ge v4, p3, :cond_6

    .line 639
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_9

    .line 640
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 641
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 653
    :cond_6
    if-eqz v3, :cond_7

    .line 654
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 656
    :cond_7
    if-eqz v1, :cond_8

    .line 657
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 661
    :cond_8
    const/16 v7, 0xa0

    goto :goto_0

    .line 644
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_9
    :try_start_4
    invoke-virtual {v3, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, "vcard":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 646
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 648
    const/16 v7, 0xd0

    .line 653
    if-eqz v3, :cond_a

    .line 654
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 656
    :cond_a
    if-eqz v1, :cond_1

    goto :goto_1

    .line 650
    :cond_b
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 653
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v4    # "count":I
    .end local v6    # "vcard":Ljava/lang/String;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_0
    move-exception v7

    .end local p1    # "op":Ljavax/obex/Operation;
    :goto_3
    if-eqz v2, :cond_c

    .line 654
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 656
    :cond_c
    if-eqz v0, :cond_d

    .line 657
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 653
    :cond_d
    throw v7

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3

    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZJLjava/lang/String;Z)I
    .locals 20
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "vcardType21"    # Z
    .param p4, "filter"    # J
    .param p6, "ownerVCard"    # Ljava/lang/String;
    .param p7, "isContacts"    # Z

    .prologue
    .line 768
    const-wide/16 v17, 0x0

    .line 771
    .local v17, "timestamp":J
    if-eqz p7, :cond_14

    .line 772
    const/4 v15, 0x0

    .line 773
    .local v15, "composer":Lcom/android/vcard/VCardComposer;
    const/4 v13, 0x0

    .line 777
    .local v13, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_4

    .line 778
    const/high16 v5, -0x40000000    # -2.0f

    .line 783
    .local v5, "vcardType":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v4

    if-nez v4, :cond_0

    .line 784
    const/high16 v4, 0x800000

    or-int/2addr v5, v4

    .line 787
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "android.contacts.DISPLAY_ORDER"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 789
    .local v16, "order":I
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_1

    .line 790
    const/high16 v4, 0x1000000

    or-int/2addr v5, v4

    .line 793
    :cond_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    move-wide/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardComposer;-><init>(Landroid/content/Context;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    .end local v15    # "composer":Lcom/android/vcard/VCardComposer;
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 795
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v14, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    const/4 v12, 0x0

    move-object v6, v3

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v4

    if-nez v4, :cond_5

    .line 797
    const/16 v4, 0xd0

    .line 826
    if-eqz v3, :cond_2

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_2
    if-eqz v14, :cond_3

    .line 830
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_3
    move-object v13, v14

    .line 878
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v5    # "vcardType":I
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v16    # "order":I
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_1
    return v4

    .line 780
    .restart local v15    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_4
    const v5, -0x3fffffff    # -2.0000002f

    .restart local v5    # "vcardType":I
    goto :goto_0

    .line 799
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v15    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v16    # "order":I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-result v4

    if-nez v4, :cond_8

    .line 800
    const/16 v4, 0xd0

    .line 826
    if-eqz v3, :cond_6

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_6
    if-eqz v14, :cond_7

    .line 830
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_7
    move-object v13, v14

    .line 800
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 803
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_9

    .line 804
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v4, :cond_c

    .line 805
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 806
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 826
    :cond_9
    if-eqz v3, :cond_a

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_a
    if-eqz v14, :cond_b

    .line 830
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_b
    move-object v13, v14

    .line 878
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v5    # "vcardType":I
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v16    # "order":I
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_2
    const/16 v4, 0xa0

    goto :goto_1

    .line 809
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v5    # "vcardType":I
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v16    # "order":I
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_c
    :try_start_5
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v19

    .line 810
    .local v19, "vcard":Ljava/lang/String;
    if-nez v19, :cond_f

    .line 811
    const-string v4, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 813
    const/16 v4, 0xd0

    .line 826
    if-eqz v3, :cond_d

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_d
    if-eqz v14, :cond_e

    .line 830
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_e
    move-object v13, v14

    .line 813
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 820
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_f
    :try_start_6
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v4

    if-nez v4, :cond_8

    .line 822
    const/16 v4, 0xd0

    .line 826
    if-eqz v3, :cond_10

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_10
    if-eqz v14, :cond_11

    .line 830
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_11
    move-object v13, v14

    .line 822
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 826
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v16    # "order":I
    .end local v19    # "vcard":Ljava/lang/String;
    .restart local v15    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v4

    move-object v3, v15

    .end local v15    # "composer":Lcom/android/vcard/VCardComposer;
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    :goto_3
    if-eqz v3, :cond_12

    .line 827
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 829
    :cond_12
    if-eqz v13, :cond_13

    .line 830
    invoke-virtual {v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 826
    :cond_13
    throw v4

    .line 834
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v5    # "vcardType":I
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_14
    const/4 v3, 0x0

    .line 835
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v13, 0x0

    .line 838
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_7
    new-instance v15, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v15, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 839
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v15, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_8
    new-instance v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v14, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 840
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_9
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v4

    if-nez v4, :cond_19

    .line 843
    :cond_15
    const/16 v4, 0xd0

    .line 866
    if-eqz v15, :cond_16

    .line 867
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 869
    :cond_16
    if-eqz v14, :cond_17

    .line 870
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_17
    move-object v13, v14

    .line 843
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 863
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v19    # "vcard":Ljava/lang/String;
    :cond_18
    :try_start_a
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 846
    .end local v19    # "vcard":Ljava/lang/String;
    :cond_19
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 847
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v4, :cond_1d

    .line 848
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1    # "op":Ljavax/obex/Operation;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 849
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 866
    :cond_1a
    if-eqz v15, :cond_1b

    .line 867
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 869
    :cond_1b
    if-eqz v14, :cond_1c

    .line 870
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1c
    move-object v13, v14

    .line 872
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 852
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :cond_1d
    :try_start_b
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v19

    .line 853
    .restart local v19    # "vcard":Ljava/lang/String;
    if-nez v19, :cond_18

    .line 854
    const-string v4, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read a contact. Error reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 856
    const/16 v4, 0xd0

    .line 866
    if-eqz v15, :cond_1e

    .line 867
    invoke-virtual {v15}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 869
    :cond_1e
    if-eqz v14, :cond_1f

    .line 870
    invoke-virtual {v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1f
    move-object v13, v14

    .line 856
    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 866
    .end local v15    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v19    # "vcard":Ljava/lang/String;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v4

    .end local p1    # "op":Ljavax/obex/Operation;
    :goto_4
    if-eqz v3, :cond_20

    .line 867
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 869
    :cond_20
    if-eqz v13, :cond_21

    .line 870
    invoke-virtual {v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 866
    :cond_21
    throw v4

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v15    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_2
    move-exception v4

    move-object v3, v15

    .end local v15    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v15    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v4

    move-object v13, v14

    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v15

    .end local v15    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .line 826
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    .restart local v5    # "vcardType":I
    .restart local v16    # "order":I
    .restart local p1    # "op":Ljavax/obex/Operation;
    :catchall_4
    move-exception v4

    goto/16 :goto_3

    .end local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local p1    # "op":Ljavax/obex/Operation;
    .restart local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :catchall_5
    move-exception v4

    move-object v13, v14

    .end local v14    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v13    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_3
.end method

.method public final getCallHistorySize(I)I
    .locals 9
    .param p1, "type"    # I

    .prologue
    .line 214
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 215
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 217
    .local v8, "size":I
    const/4 v6, 0x0

    .line 219
    .local v6, "callCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    if-eqz v6, :cond_0

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 227
    :cond_0
    if-eqz v6, :cond_1

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    :goto_0
    const/4 v6, 0x0

    .line 232
    :cond_1
    return v8

    .line 224
    :catch_0
    move-exception v7

    .line 225
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "CursorWindowAllocationException while getting CallHistory size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    if-eqz v6, :cond_1

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 227
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 228
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v6, 0x0

    .line 227
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v14, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v17, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 465
    .local v7, "contactCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 467
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 468
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 475
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 478
    if-eqz v7, :cond_6

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumnIndex()I

    move-result v13

    .line 480
    .local v13, "nameIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 482
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 484
    .local v9, "id":J
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 488
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 491
    .end local v9    # "id":J
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nameIndex":I
    :catch_0
    move-exception v8

    .line 492
    .local v8, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "CursorWindowAllocationException while getting contact names"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    if-eqz v7, :cond_1

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    .end local v8    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_2
    const/4 v7, 0x0

    .line 499
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 500
    .local v16, "tempListSize":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    .line 501
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 502
    .local v15, "object":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 503
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 470
    .end local v11    # "index":I
    .end local v15    # "object":Ljava/lang/String;
    .end local v16    # "tempListSize":I
    :cond_3
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto/16 :goto_0

    .line 494
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    const/4 v7, 0x0

    .line 494
    :cond_4
    throw v1

    .line 506
    .restart local v11    # "index":I
    .restart local v16    # "tempListSize":I
    :cond_5
    return-object v14

    .line 494
    .end local v11    # "index":I
    .end local v16    # "tempListSize":I
    :cond_6
    if-eqz v7, :cond_1

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public final getContactsSize()I
    .locals 9

    .prologue
    .line 174
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 175
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 176
    .local v8, "size":I
    const/4 v6, 0x0

    .line 178
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    if-eqz v6, :cond_0

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 185
    :cond_0
    if-eqz v6, :cond_1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    :goto_0
    const/4 v6, 0x0

    .line 190
    :cond_1
    return v8

    .line 182
    :catch_0
    move-exception v7

    .line 183
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "CursorWindowAllocationException while getting Contacts size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v6, :cond_1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 185
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v6, 0x0

    .line 185
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(ZJ)Ljava/lang/String;
    .locals 5
    .param p1, "vcardType21"    # Z
    .param p2, "filter"    # J

    .prologue
    .line 140
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcardFromProfile(ZJ)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "vcard":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    :goto_0
    return-object v3

    .line 148
    .end local v3    # "vcard":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "number":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 153
    .restart local v3    # "vcard":Ljava/lang/String;
    goto :goto_0
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v12, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 344
    .local v13, "ownerName":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->getProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 347
    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 348
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v13

    .line 350
    :cond_2
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 354
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 356
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_6

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    :cond_3
    :goto_0
    if-eqz v6, :cond_8

    .line 366
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumnIndex()I

    move-result v11

    .line 367
    .local v11, "nameIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_8

    .line 369
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "name":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 371
    .local v8, "id":J
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 374
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 377
    .end local v8    # "id":J
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "nameIndex":I
    :catch_0
    move-exception v7

    .line 378
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "CursorWindowAllocationException while getting Phonebook name list"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    if-eqz v6, :cond_5

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_2
    const/4 v6, 0x0

    .line 385
    :cond_5
    return-object v12

    .line 360
    :cond_6
    :try_start_2
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDisplayNameColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    const/4 v6, 0x0

    .line 380
    :cond_7
    throw v0

    :cond_8
    if-eqz v6, :cond_5

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 158
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 170
    .local v0, "size":I
    :goto_0
    return v0

    .line 160
    .end local v0    # "size":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 161
    .restart local v0    # "size":I
    goto :goto_0

    .line 163
    .end local v0    # "size":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactsSize()I

    move-result v0

    .line 164
    .restart local v0    # "size":I
    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v14, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v20, "startNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v18, "onlyphoneNumber":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 393
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 394
    .local v8, "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 395
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 392
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 398
    .end local v8    # "c":C
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "SearchOnlyNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 401
    .local v9, "contactCursor":Landroid/database/Cursor;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 404
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 406
    if-eqz v9, :cond_d

    .line 407
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_d

    .line 409
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "number":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 407
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 443
    .end local v15    # "number":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 444
    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "CursorWindowAllocationException while getting SIM contact names"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    if-eqz v9, :cond_3

    .line 447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 448
    .end local v10    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_3
    const/4 v9, 0x0

    .line 451
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 452
    .local v19, "startListSize":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_4
    move/from16 v0, v19

    if-ge v11, v0, :cond_c

    .line 453
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 454
    .local v16, "object":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 455
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 414
    .end local v11    # "index":I
    .end local v16    # "object":Ljava/lang/String;
    .end local v19    # "startListSize":I
    .restart local v15    # "number":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v17, "onlyNumber":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 416
    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 417
    .restart local v8    # "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_6

    const/16 v1, 0x39

    if-gt v8, v1, :cond_6

    .line 418
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 415
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 421
    .end local v8    # "c":C
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 423
    .local v21, "tmpNumber":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 424
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 425
    .local v13, "name":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 430
    :cond_8
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v13    # "name":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 434
    .restart local v13    # "name":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 439
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 446
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "number":Ljava/lang/String;
    .end local v17    # "onlyNumber":Ljava/lang/StringBuilder;
    .end local v21    # "tmpNumber":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_b

    .line 447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 448
    const/4 v9, 0x0

    .line 446
    :cond_b
    throw v1

    .line 458
    .restart local v11    # "index":I
    .restart local v19    # "startListSize":I
    :cond_c
    return-object v14

    .line 446
    .end local v11    # "index":I
    .end local v19    # "startListSize":I
    :cond_d
    if-eqz v9, :cond_3

    .line 447
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3
.end method

.method public final getSIMContactsSize()I
    .locals 9

    .prologue
    .line 194
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 196
    .local v8, "size":I
    const/4 v6, 0x0

    .line 198
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    if-eqz v6, :cond_0

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 205
    :cond_0
    if-eqz v6, :cond_1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :goto_0
    const/4 v6, 0x0

    .line 210
    :cond_1
    return v8

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "CursorWindowAllocationException while getting SIM Contacts size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v6, :cond_1

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 205
    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    const/4 v6, 0x0

    .line 205
    :cond_2
    throw v0
.end method

.method public final getSIMPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v10, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v6, "allnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 283
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 285
    .local v7, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 286
    if-eqz v7, :cond_5

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 293
    :cond_0
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    .end local v9    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 297
    .local v8, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "CursorWindowAllocationException while getting SIM Phonebook name list"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    if-eqz v7, :cond_1

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 301
    .end local v8    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_1
    const/4 v7, 0x0

    .line 304
    :cond_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_4

    .line 316
    :cond_2
    :goto_2
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 317
    return-object v10

    .line 299
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v7, 0x0

    .line 299
    :cond_3
    throw v0

    .line 306
    :cond_4
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_2

    .line 308
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 299
    :cond_5
    if-eqz v7, :cond_1

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "number"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "presentation"

    aput-object v4, v2, v0

    .line 241
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 242
    .local v7, "CALLS_NUMBER_COLUMN_INDEX":I
    const/4 v6, 0x1

    .line 243
    .local v6, "CALLS_NAME_COLUMN_INDEX":I
    const/4 v8, 0x2

    .line 245
    .local v8, "CALLS_NUMBER_PRESENTATION_COLUMN_INDEX":I
    const/4 v9, 0x0

    .line 246
    .local v9, "callCursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 250
    if-eqz v9, :cond_4

    .line 251
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 258
    .local v13, "numberPresentation":I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040015

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 264
    .end local v13    # "numberPresentation":I
    :cond_0
    :goto_1
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    .end local v12    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 268
    .local v10, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v4, "CursorWindowAllocationException while loading CallHistory"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    if-eqz v9, :cond_1

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v10    # "e":Landroid/database/CursorWindowAllocationException;
    :goto_2
    const/4 v9, 0x0

    .line 275
    :cond_1
    return-object v11

    .line 261
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "numberPresentation":I
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_1

    .line 270
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "numberPresentation":I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 272
    const/4 v9, 0x0

    .line 270
    :cond_3
    throw v0

    :cond_4
    if-eqz v9, :cond_1

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
