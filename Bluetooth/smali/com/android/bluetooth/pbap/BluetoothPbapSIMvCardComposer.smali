.class public Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapSIMvCardComposer.java"


# static fields
.field private static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field private static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field private static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field private static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final NAME_COLUMN_INDEX:I = 0x0

.field private static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final NUMBERLABEL_COLUMN_INDEX:I = 0x3

.field private static final NUMBERTYPE_COLUMN_INDEX:I = 0x2

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final SIM_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SIMvCardComposer"


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_URI:Ljava/lang/String;

    .line 82
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method

.method private createOnevCardEntryInternal(Z)Ljava/lang/String;
    .locals 11
    .param p1, "vcardVer21"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 133
    if-eqz p1, :cond_3

    const/high16 v7, -0x40000000    # -2.0f

    :goto_0
    const/high16 v10, 0x2000000

    or-int v6, v7, v10

    .line 136
    .local v6, "vcardType":I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, v6}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 137
    .local v0, "builder":Lcom/android/vcard/VCardBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_0
    new-array v7, v8, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    move v3, v8

    .line 142
    .local v3, "needCharset":Z
    :goto_1
    const-string v7, "FN"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 143
    const-string v7, "N"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 145
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "number":Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    const v8, 0x7f040015

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 152
    .local v5, "type":I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v4, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 133
    .end local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "needCharset":Z
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "vcardType":I
    :cond_3
    const v7, -0x3fffffff    # -2.0000002f

    goto :goto_0

    .restart local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v6    # "vcardType":I
    :cond_4
    move v3, v9

    .line 141
    goto :goto_1
.end method


# virtual methods
.method public createOneEntry(Z)Ljava/lang/String;
    .locals 2
    .param p1, "vcardVer21"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    const-string v0, "The vCard composer object is not correctly initialized"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOnevCardEntryInternal(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    throw v0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 178
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 90
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 91
    .local v7, "myUri":Landroid/net/Uri;
    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    move v0, v8

    .line 116
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->SIM_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 101
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    move v0, v8

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 111
    :goto_1
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    move v0, v8

    .line 113
    goto :goto_0

    .line 107
    :catch_0
    move-exception v6

    .line 108
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SIMvCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_1

    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mErrorReason:Ljava/lang/String;

    .line 111
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 110
    throw v0

    .line 116
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sortalpha"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->setpositionbyalpha(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0
.end method

.method public setpositionbyalpha(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 237
    :cond_0
    return-void

    .line 213
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 223
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public terminate()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mCursor:Landroid/database/Cursor;

    .line 170
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->mTerminateIsCalled:Z

    .line 171
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SIMvCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
