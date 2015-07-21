.class public Lcom/android/bluetooth/hfp/AtPhonebook;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/AtPhonebook$1;,
        Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    }
.end annotation


# static fields
.field private static final ACCESS_AUTHORITY_CLASS:Ljava/lang/String; = "com.android.settings.bluetooth.BluetoothPermissionRequest"

.field private static final ACCESS_AUTHORITY_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final CALLS_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final INCOMING_CALL_WHERE:Ljava/lang/String; = "type=1"

.field private static final MAX_PHONEBOOK_SIZE:I = 0x4000

.field private static final MISSED_CALL_WHERE:Ljava/lang/String; = "type=3"

.field private static final OUTGOING_CALL_WHERE:Ljava/lang/String; = "type=2"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothAtPhonebook"

.field private static final VISIBLE_PHONEBOOK_WHERE:Ljava/lang/String; = "in_visible_group=1"


# instance fields
.field final TYPE_READ:I

.field final TYPE_SET:I

.field final TYPE_TEST:I

.field final TYPE_UNKNOWN:I

.field private mCharacterSet:Ljava/lang/String;

.field private mCheckingAccessPermission:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpbrIndex1:I

.field private mCpbrIndex2:I

.field private mCurrentPhonebook:Ljava/lang/String;

.field private final mPhonebooks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "presentation"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "headsetState"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    .line 95
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_UNKNOWN:I

    .line 96
    iput v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_READ:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_SET:I

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->TYPE_TEST:I

    .line 101
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    iput-object p2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "DC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "RC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "MC"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    const-string v1, "ME"

    new-instance v2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    invoke-direct {v2, p0, v3}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "ME"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 111
    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 112
    iput-boolean v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 113
    return-void
.end method

.method private checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 565
    const-string v2, "checkAccessPermission"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v1

    .line 568
    .local v1, "trust":Z
    if-eqz v1, :cond_0

    .line 569
    const/4 v2, 0x1

    .line 581
    :goto_0
    return v2

    .line 572
    :cond_0
    const-string v2, "checkAccessPermission - ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 580
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getMaxPhoneBookSize(I)I
    .locals 2
    .param p1, "currSize"    # I

    .prologue
    const/16 v0, 0x64

    .line 430
    monitor-enter p0

    if-ge p1, v0, :cond_0

    .line 431
    .local v0, "maxSize":I
    :goto_0
    :try_start_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    .line 432
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->roundUpToPowerOfTwo(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "maxSize":I
    :cond_0
    move v0, p1

    .line 430
    goto :goto_0

    .restart local v0    # "maxSize":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getPhoneType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 585
    packed-switch p0, :pswitch_data_0

    .line 598
    const-string v0, "O"

    :goto_0
    return-object v0

    .line 587
    :pswitch_0
    const-string v0, "H"

    goto :goto_0

    .line 589
    :pswitch_1
    const-string v0, "M"

    goto :goto_0

    .line 591
    :pswitch_2
    const-string v0, "W"

    goto :goto_0

    .line 594
    :pswitch_3
    const-string v0, "F"

    goto :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .locals 3
    .param p1, "pb"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 353
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    .line 366
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 356
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .line 357
    .local v0, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v0, :cond_2

    .line 358
    new-instance v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .end local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V

    .line 360
    .restart local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :cond_2
    if-nez p2, :cond_3

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 361
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 362
    goto :goto_0

    .line 353
    .end local v0    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 603
    const-string v0, "BluetoothAtPhonebook"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method

.method private declared-synchronized queryPhonebook(Ljava/lang/String;Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;)Z
    .locals 8
    .param p1, "pb"    # Ljava/lang/String;
    .param p2, "pbr"    # Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    .prologue
    const/4 v7, 0x0

    .line 371
    monitor-enter p0

    const/4 v6, 0x1

    .line 373
    .local v6, "ancillaryPhonebook":Z
    :try_start_0
    const-string v0, "ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const/4 v6, 0x0

    .line 375
    const-string v3, "in_visible_group=1"

    .line 386
    .local v3, "where":Ljava/lang/String;
    :goto_0
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 391
    :cond_0
    if-eqz v6, :cond_6

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->CALLS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 395
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    move v0, v7

    .line 413
    .end local v3    # "where":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return v0

    .line 376
    :cond_1
    :try_start_1
    const-string v0, "DC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const-string v3, "type=2"

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .line 378
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    const-string v0, "RC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 379
    const-string v3, "type=1"

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v3    # "where":Ljava/lang/String;
    :cond_3
    const-string v0, "MC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    const-string v3, "type=3"

    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "where":Ljava/lang/String;
    :cond_4
    move v0, v7

    .line 383
    goto :goto_1

    .line 397
    .restart local v3    # "where":Ljava/lang/String;
    :cond_5
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 398
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "presentation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 400
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 401
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    .line 412
    :goto_2
    const-string v0, "BluetoothAtPhonebook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed phonebook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x1

    goto :goto_1

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/hfp/AtPhonebook;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 LIMIT 16384"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 405
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    move v0, v7

    goto/16 :goto_1

    .line 407
    :cond_7
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    .line 408
    const/4 v0, -0x1

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    .line 409
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "data2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    .line 410
    iget-object v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 371
    .end local v3    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundUpToPowerOfTwo(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 436
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 437
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 438
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 439
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 440
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 441
    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mPhonebooks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    return-void
.end method

.method public getCheckingAccessPermission()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    return v0
.end method

.method public getLastDialledNumber()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 121
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 122
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type=2"

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 125
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 135
    :goto_0
    return-object v4

    .line 127
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 132
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 133
    .local v6, "column":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "number":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v8

    .line 135
    goto :goto_0
.end method

.method public handleCpbrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 15
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 256
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - atString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, "atCommandResult":I
    const/4 v2, -0x1

    .line 259
    .local v2, "atCommandErrorCode":I
    const/4 v3, 0x0

    .line 260
    .local v3, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 339
    const-string v12, "handleCpbrCommand - invalid chars"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 340
    const/16 v2, 0x19

    .line 342
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 343
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 344
    :cond_1
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 345
    return-void

    .line 267
    :pswitch_0
    const-string v12, "handleCpbrCommand - test command"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 269
    const-string v12, "SM"

    iget-object v13, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 270
    const/4 v11, 0x0

    .line 282
    .local v11, "size":I
    :goto_1
    if-nez v11, :cond_2

    .line 284
    const/4 v11, 0x1

    .line 286
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+CPBR: (1-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "),30,30"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    const/4 v4, 0x1

    .line 288
    goto :goto_0

    .line 272
    .end local v11    # "size":I
    :cond_3
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v10

    .line 273
    .local v10, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v10, :cond_4

    .line 274
    const/4 v2, 0x3

    .line 275
    goto :goto_0

    .line 277
    :cond_4
    iget-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 278
    .restart local v11    # "size":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 279
    iget-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    goto :goto_1

    .line 294
    .end local v10    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v11    # "size":I
    :pswitch_1
    const-string v12, "handleCpbrCommand - set/read command"

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 295
    iget v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 297
    const/4 v2, 0x3

    .line 298
    goto :goto_0

    .line 303
    :cond_5
    const-string v12, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_6

    .line 304
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_0

    .line 307
    :cond_6
    const-string v12, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v1, v12, v13

    .line 308
    .local v1, "atCommand":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, "indices":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v12, v9

    if-ge v6, v12, :cond_7

    .line 311
    aget-object v12, v9, v6

    const/16 v13, 0x3b

    const/16 v14, 0x20

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v6

    .line 309
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 313
    :cond_7
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 314
    .local v7, "index1":I
    array-length v12, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 315
    move v8, v7

    .line 325
    .local v8, "index2":I
    :goto_3
    iput v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 326
    iput v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    .line 327
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 329
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->checkAccessPermission(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 330
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/AtPhonebook;->processCpbrCommand()I

    move-result v4

    .line 332
    const/4 v12, -0x1

    iput v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    goto/16 :goto_0

    .line 317
    .end local v8    # "index2":I
    :cond_8
    const/4 v12, 0x1

    :try_start_1
    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .restart local v8    # "index2":I
    goto :goto_3

    .line 319
    .end local v7    # "index1":I
    .end local v8    # "index2":I
    :catch_0
    move-exception v5

    .line 320
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleCpbrCommand - exception - invalid chars: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 321
    const/16 v2, 0x19

    .line 322
    iget-object v12, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v12, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleCpbsCommand(Ljava/lang/String;I)V
    .locals 11
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCpbsCommand - atString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "atCommandResult":I
    const/4 v1, -0x1

    .line 200
    .local v1, "atCommandErrorCode":I
    const/4 v2, 0x0

    .line 201
    .local v2, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 247
    const-string v7, "handleCpbsCommand - invalid chars"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 248
    const/16 v1, 0x19

    .line 250
    :goto_0
    if-eqz v2, :cond_0

    .line 251
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v7, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 252
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v7, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 253
    return-void

    .line 203
    :pswitch_0
    const-string v7, "handleCpbsCommand - read command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 205
    const-string v7, "SM"

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CPBS: \"SM\",0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    const/4 v3, 0x1

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-direct {p0, v7, v9}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v5

    .line 211
    .local v5, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v5, :cond_2

    .line 212
    const/4 v1, 0x4

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 216
    .local v6, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+CPBS: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/android/bluetooth/hfp/AtPhonebook;->getMaxPhoneBookSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 218
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    .line 219
    const/4 v3, 0x1

    .line 220
    goto :goto_0

    .line 222
    .end local v5    # "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    .end local v6    # "size":I
    :pswitch_1
    const-string v7, "handleCpbsCommand - test command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 223
    const-string v2, "+CPBS: (\"ME\",\"SM\",\"DC\",\"RC\",\"MC\")"

    .line 224
    const/4 v3, 0x1

    .line 225
    goto/16 :goto_0

    .line 227
    :pswitch_2
    const-string v7, "handleCpbsCommand - set command"

    invoke-static {v7}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 228
    const-string v7, "="

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "args":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    aget-object v7, v0, v9

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_4

    .line 231
    :cond_3
    const/4 v1, 0x4

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_4
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "pb":Ljava/lang/String;
    :goto_1
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 236
    :cond_5
    :goto_2
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 237
    :cond_6
    invoke-direct {p0, v4, v10}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v7, "SM"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 239
    const/4 v1, 0x3

    .line 240
    goto/16 :goto_0

    .line 242
    :cond_7
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    .line 243
    const/4 v3, 0x1

    .line 244
    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCscsCommand(Ljava/lang/String;I)V
    .locals 8
    .param p1, "atString"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x1

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCscsCommand - atString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, "atCommandResult":I
    const/4 v1, -0x1

    .line 156
    .local v1, "atCommandErrorCode":I
    const/4 v2, 0x0

    .line 157
    .local v2, "atCommandResponse":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 187
    const-string v5, "handleCscsCommand - Invalid chars"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 188
    const/16 v1, 0x19

    .line 190
    :goto_0
    if-eqz v2, :cond_0

    .line 191
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 192
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v5, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseCodeNative(II)Z

    .line 193
    return-void

    .line 159
    :pswitch_0
    const-string v5, "handleCscsCommand - Read Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CSCS: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    const/4 v3, 0x1

    .line 162
    goto :goto_0

    .line 164
    :pswitch_1
    const-string v5, "handleCscsCommand - Test Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 165
    const-string v2, "+CSCS: (\"UTF-8\",\"IRA\",\"GSM\")"

    .line 166
    const/4 v3, 0x1

    .line 167
    goto :goto_0

    .line 169
    :pswitch_2
    const-string v5, "handleCscsCommand - Set Command"

    invoke-static {v5}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 170
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "args":[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    aget-object v5, v0, v7

    instance-of v5, v5, Ljava/lang/String;

    if-nez v5, :cond_2

    .line 172
    :cond_1
    const/4 v1, 0x4

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v7

    .line 176
    .local v4, "characterSet":Ljava/lang/String;
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v5, "GSM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "IRA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    :cond_3
    iput-object v4, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 180
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 182
    :cond_4
    const/4 v1, 0x4

    .line 184
    goto/16 :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method processCpbrCommand()I
    .locals 23

    .prologue
    .line 447
    const-string v1, "processCpbrCommand"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 448
    const/4 v9, 0x0

    .line 449
    .local v9, "atCommandResult":I
    const/4 v7, -0x1

    .line 450
    .local v7, "atCommandErrorCode":I
    const/4 v8, 0x0

    .line 451
    .local v8, "atCommandResponse":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v21, "response":Ljava/lang/StringBuilder;
    const-string v1, "SM"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v9, 0x1

    move v10, v9

    .line 558
    .end local v9    # "atCommandResult":I
    .local v10, "atCommandResult":I
    :goto_0
    return v10

    .line 461
    .end local v10    # "atCommandResult":I
    .restart local v9    # "atCommandResult":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCurrentPhonebook:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhonebookResult(Ljava/lang/String;Z)Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;

    move-result-object v18

    .line 462
    .local v18, "pbr":Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
    if-nez v18, :cond_1

    .line 463
    const/4 v7, 0x3

    move v10, v9

    .line 464
    .end local v9    # "atCommandResult":I
    .restart local v10    # "atCommandResult":I
    goto :goto_0

    .line 471
    .end local v10    # "atCommandResult":I
    .restart local v9    # "atCommandResult":I
    :cond_1
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 473
    :cond_2
    const/4 v9, 0x1

    move v10, v9

    .line 474
    .end local v9    # "atCommandResult":I
    .restart local v10    # "atCommandResult":I
    goto :goto_0

    .line 478
    .end local v10    # "atCommandResult":I
    .restart local v9    # "atCommandResult":I
    :cond_3
    const/4 v9, 0x1

    .line 479
    const/4 v12, -0x1

    .line 480
    .local v12, "errorDetected":I
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCpbrIndex1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mCpbrIndex2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .local v13, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    if-gt v13, v1, :cond_e

    .line 483
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 484
    .local v16, "number":Ljava/lang/String;
    const/4 v14, 0x0

    .line 485
    .local v14, "name":Ljava/lang/String;
    const/16 v22, -0x1

    .line 486
    .local v22, "type":I
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 494
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_5

    .line 495
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 496
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 497
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 499
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 508
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_2
    if-nez v14, :cond_6

    const-string v14, ""

    .line 509
    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 510
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1c

    if-le v1, v2, :cond_7

    const/4 v1, 0x0

    const/16 v2, 0x1c

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 512
    :cond_7
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 513
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->typeColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/hfp/AtPhonebook;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 517
    :cond_8
    if-nez v16, :cond_9

    const-string v16, ""

    .line 518
    :cond_9
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v20

    .line 520
    .local v20, "regionType":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 521
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 522
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_a

    const/4 v1, 0x0

    const/16 v2, 0x1e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 523
    :cond_a
    const/16 v17, 0x1

    .line 524
    .local v17, "numberPresentation":I
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 525
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->numberPresentationColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 527
    :cond_b
    const/4 v1, 0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_c

    .line 528
    const-string v16, ""

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 536
    :cond_c
    const-string v1, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 537
    invoke-static {v14}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v15

    .line 538
    .local v15, "nameByte":[B
    if-nez v15, :cond_12

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mContext:Landroid/content/Context;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 545
    .end local v15    # "nameByte":[B
    :cond_d
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CPBR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 546
    .local v19, "record":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 547
    move-object/from16 v8, v19

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCpbrCommand - atCommandResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->atResponseStringNative(Ljava/lang/String;)Z

    .line 550
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_13

    .line 554
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    .end local v17    # "numberPresentation":I
    .end local v19    # "record":Ljava/lang/String;
    .end local v20    # "regionType":I
    .end local v22    # "type":I
    :cond_e
    if-eqz v18, :cond_f

    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_f

    .line 555
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 556
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    :cond_f
    move v10, v9

    .line 558
    .end local v9    # "atCommandResult":I
    .restart local v10    # "atCommandResult":I
    goto/16 :goto_0

    .line 503
    .end local v10    # "atCommandResult":I
    .restart local v9    # "atCommandResult":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "number":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_10
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 504
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->nameColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 506
    :cond_11
    const-string v1, "processCpbrCommand: empty name and number"

    invoke-static {v1}, Lcom/android/bluetooth/hfp/AtPhonebook;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 541
    .restart local v15    # "nameByte":[B
    .restart local v17    # "numberPresentation":I
    .restart local v20    # "regionType":I
    :cond_12
    new-instance v14, Ljava/lang/String;

    .end local v14    # "name":Ljava/lang/String;
    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([B)V

    .restart local v14    # "name":Ljava/lang/String;
    goto/16 :goto_3

    .line 482
    .end local v15    # "nameByte":[B
    .restart local v19    # "record":Ljava/lang/String;
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method declared-synchronized resetAtState()V
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCharacterSet:Ljava/lang/String;

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCheckingAccessPermission(Z)V
    .locals 0
    .param p1, "checkAccessPermission"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCheckingAccessPermission:Z

    .line 144
    return-void
.end method

.method public setCpbrIndex(I)V
    .locals 0
    .param p1, "cpbrIndex"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex2:I

    iput p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook;->mCpbrIndex1:I

    .line 148
    return-void
.end method
