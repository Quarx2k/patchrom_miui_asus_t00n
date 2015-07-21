.class public Lcom/android/emailcommon/provider/MessageStateChange;
.super Lcom/android/emailcommon/provider/MessageChangeLogTable;
.source "MessageStateChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;
    }
.end annotation


# static fields
.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final LOG_TAG:Ljava/lang/String; = "MessageStateChange"

.field public static final NEW_FLAG_FAVORITE:Ljava/lang/String; = "newFlagFavorite"

.field public static final NEW_FLAG_READ:Ljava/lang/String; = "newFlagRead"

.field public static final OLD_FLAG_FAVORITE:Ljava/lang/String; = "oldFlagFavorite"

.field public static final OLD_FLAG_READ:Ljava/lang/String; = "oldFlagRead"

.field public static final PATH:Ljava/lang/String; = "messageChange"

.field public static final TABLE_NAME:Ljava/lang/String; = "MessageStateChange"

.field public static final VALUE_UNCHANGED:I = -0x1


# instance fields
.field private final mMailboxId:J

.field private mNewFlagFavorite:I

.field private mNewFlagRead:I

.field private final mOldFlagFavorite:I

.field private final mOldFlagRead:I


# direct methods
.method private constructor <init>(JLjava/lang/String;JIIIIJ)V
    .locals 0
    .param p1, "messageKey"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "id"    # J
    .param p6, "oldFlagRead"    # I
    .param p7, "newFlagRead"    # I
    .param p8, "oldFlagFavorite"    # I
    .param p9, "newFlagFavorite"    # I
    .param p10, "mailboxId"    # J

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/emailcommon/provider/MessageChangeLogTable;-><init>(JLjava/lang/String;J)V

    .line 74
    iput p6, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    .line 75
    iput p7, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    .line 76
    iput p8, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    .line 77
    iput p9, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    .line 78
    iput-wide p10, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    .line 79
    return-void
.end method

.method public static convertToChangesMap(Ljava/util/List;)Landroid/support/v4/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;)",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    const/4 v4, 0x0

    .line 200
    if-nez p0, :cond_1

    move-object v1, v4

    .line 216
    :cond_0
    :goto_0
    return-object v1

    .line 204
    :cond_1
    new-instance v1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 205
    .local v1, "changesMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 206
    .local v0, "change":Lcom/android/emailcommon/provider/MessageStateChange;
    iget-wide v5, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    invoke-virtual {v1, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 207
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    if-nez v3, :cond_2

    .line 208
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    iget-wide v5, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mMailboxId:J

    invoke-virtual {v1, v5, v6, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 211
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0    # "change":Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 214
    goto :goto_0
.end method

.method public static getChanges(Landroid/content/Context;JZ)Ljava/util/List;
    .locals 32
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "ignoreFavorites"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/MessageStateChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 115
    .local v21, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    sget-object v28, Lcom/android/emailcommon/provider/MessageStateChange$ProjectionChangeQuery;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-wide/from16 v2, p1

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/emailcommon/provider/MessageStateChange;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v16

    .line 116
    .local v16, "c":Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 117
    const/16 v18, 0x0

    .line 191
    :cond_0
    :goto_0
    return-object v18

    .line 122
    :cond_1
    new-instance v19, Landroid/support/v4/util/LongSparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 124
    .local v19, "changesMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    :goto_1
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 125
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 126
    .local v8, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 127
    .local v5, "messageKey":J
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "serverId":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 129
    .local v10, "oldFlagRead":I
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 130
    .local v25, "newFlagReadTable":I
    const/4 v4, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_6

    move v11, v10

    .line 132
    .local v11, "newFlagRead":I
    :goto_2
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 134
    .local v12, "oldFlagFavorite":I
    const/4 v4, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 136
    .local v24, "newFlagFavoriteTable":I
    if-nez p3, :cond_2

    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_7

    :cond_2
    move v13, v12

    .line 139
    .local v13, "newFlagFavorite":I
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 140
    .local v22, "existingChange":Lcom/android/emailcommon/provider/MessageStateChange;
    if-eqz v22, :cond_8

    .line 141
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mLastId:J

    move-wide/from16 v28, v0

    cmp-long v4, v28, v8

    if-ltz v4, :cond_3

    .line 142
    const-string v4, "MessageStateChange"

    const-string v28, "DChanges were not in ascending id order"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    :cond_3
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    if-ne v4, v10, :cond_4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    if-eq v4, v12, :cond_5

    .line 146
    :cond_4
    const-string v4, "MessageStateChange"

    const-string v28, "existing change inconsistent with new change"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    :cond_5
    move-object/from16 v0, v22

    iput v11, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    .line 149
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    .line 150
    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mLastId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 164
    .end local v5    # "messageKey":J
    .end local v7    # "serverId":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "oldFlagRead":I
    .end local v11    # "newFlagRead":I
    .end local v12    # "oldFlagFavorite":I
    .end local v13    # "newFlagFavorite":I
    .end local v22    # "existingChange":Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v24    # "newFlagFavoriteTable":I
    .end local v25    # "newFlagReadTable":I
    :catchall_0
    move-exception v4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v4

    .restart local v5    # "messageKey":J
    .restart local v7    # "serverId":Ljava/lang/String;
    .restart local v8    # "id":J
    .restart local v10    # "oldFlagRead":I
    .restart local v25    # "newFlagReadTable":I
    :cond_6
    move/from16 v11, v25

    .line 130
    goto :goto_2

    .restart local v11    # "newFlagRead":I
    .restart local v12    # "oldFlagFavorite":I
    .restart local v24    # "newFlagFavoriteTable":I
    :cond_7
    move/from16 v13, v24

    .line 136
    goto :goto_3

    .line 152
    .restart local v13    # "newFlagFavorite":I
    .restart local v22    # "existingChange":Lcom/android/emailcommon/provider/MessageStateChange;
    :cond_8
    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/MessageMove;->getLastSyncedMailboxForMessage(Landroid/content/ContentResolver;J)J

    move-result-wide v14

    .line 154
    .local v14, "mailboxId":J
    const-wide/16 v28, -0x1

    cmp-long v4, v14, v28

    if-nez v4, :cond_9

    .line 155
    const-string v4, "MessageStateChange"

    const-string v28, "No mailbox id for message %d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 157
    :cond_9
    new-instance v4, Lcom/android/emailcommon/provider/MessageStateChange;

    invoke-direct/range {v4 .. v15}, Lcom/android/emailcommon/provider/MessageStateChange;-><init>(JLjava/lang/String;JIIIIJ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 164
    .end local v5    # "messageKey":J
    .end local v7    # "serverId":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "oldFlagRead":I
    .end local v11    # "newFlagRead":I
    .end local v12    # "oldFlagFavorite":I
    .end local v13    # "newFlagFavorite":I
    .end local v14    # "mailboxId":J
    .end local v22    # "existingChange":Lcom/android/emailcommon/provider/MessageStateChange;
    .end local v24    # "newFlagFavoriteTable":I
    .end local v25    # "newFlagReadTable":I
    :cond_a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 169
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v20

    .line 170
    .local v20, "count":I
    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v26, v0

    .line 171
    .local v26, "unchangedMessages":[J
    const/16 v27, 0x0

    .line 172
    .local v27, "unchangedMessagesCount":I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v18, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/provider/MessageStateChange;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_d

    .line 174
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/provider/MessageStateChange;

    .line 176
    .local v17, "change":Lcom/android/emailcommon/provider/MessageStateChange;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_c

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v4, v0, :cond_c

    .line 179
    :cond_b
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/emailcommon/provider/MessageStateChange;->mMessageKey:J

    move-wide/from16 v28, v0

    aput-wide v28, v26, v27

    .line 180
    add-int/lit8 v27, v27, 0x1

    .line 173
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 182
    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 185
    .end local v17    # "change":Lcom/android/emailcommon/provider/MessageStateChange;
    :cond_d
    if-eqz v27, :cond_e

    .line 186
    sget-object v4, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v4, v1, v2}, Lcom/android/emailcommon/provider/MessageStateChange;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 188
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageChange"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    return-void
.end method

.method public static upsyncRetry(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "messageKeys"    # [J
    .param p2, "count"    # I

    .prologue
    .line 238
    sget-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageStateChange;->retryMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 239
    return-void
.end method

.method public static upsyncSuccessful(Landroid/content/ContentResolver;[JI)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "messageKeys"    # [J
    .param p2, "count"    # I

    .prologue
    .line 227
    sget-object v0, Lcom/android/emailcommon/provider/MessageStateChange;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/android/emailcommon/provider/MessageStateChange;->deleteRowsForMessages(Landroid/content/ContentResolver;Landroid/net/Uri;[JI)I

    .line 228
    return-void
.end method


# virtual methods
.method public final getNewFlagFavorite()I
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagFavorite:I

    iget v1, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagFavorite:I

    goto :goto_0
.end method

.method public final getNewFlagRead()I
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mOldFlagRead:I

    iget v1, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    if-ne v0, v1, :cond_0

    .line 83
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/MessageStateChange;->mNewFlagRead:I

    goto :goto_0
.end method
