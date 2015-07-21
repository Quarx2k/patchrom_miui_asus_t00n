.class public abstract Lcom/android/common/widget/CompositeCursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/common/widget/CompositeCursorAdapter$Partition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 62
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 71
    iput-object p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    .line 73
    return-void
.end method


# virtual methods
.method public addPartition(ILcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "partition"    # Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 97
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V
    .locals 1
    .param p1, "partition"    # Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 91
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 85
    new-instance v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    invoke-direct {v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 86
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 3

    .prologue
    .line 473
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 474
    .local v1, "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-boolean v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v2, :cond_0

    .line 475
    const/4 v2, 0x0

    .line 478
    .end local v1    # "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 380
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 209
    .local v0, "prevCursor":Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 210
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-object p2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 214
    if-eqz p2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 218
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 220
    :cond_2
    return-void
.end method

.method public clearPartitions()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 118
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    goto :goto_0

    .line 120
    .end local v1    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 121
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 128
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 129
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v0, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 130
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 134
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    iget-object v3, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 135
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 136
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-boolean v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    if-eqz v5, :cond_0

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    iput v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    .line 167
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 168
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget-object v1, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 169
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 170
    .local v0, "count":I
    :goto_2
    iget-boolean v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_2

    .line 171
    if-nez v0, :cond_1

    iget-boolean v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    if-eqz v5, :cond_2

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_2
    iput v0, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    .line 176
    iget v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    goto :goto_1

    .end local v0    # "count":I
    :cond_3
    move v0, v4

    .line 169
    goto :goto_2

    .line 179
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 194
    iget v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCount:I

    return v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 361
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 364
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 365
    return-object v0

    .line 361
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/common/widget/CompositeCursorAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 415
    const/4 v5, 0x0

    .line 416
    .local v5, "start":I
    iget-object v6, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 417
    .local v3, "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget v6, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v5, v6

    .line 418
    .local v1, "end":I
    if-lt p1, v5, :cond_3

    if-ge p1, v1, :cond_3

    .line 419
    sub-int v4, p1, v5

    .line 420
    .local v4, "offset":I
    iget-boolean v6, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v6, :cond_0

    .line 421
    add-int/lit8 v4, v4, -0x1

    .line 423
    :cond_0
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 433
    .end local v1    # "end":I
    .end local v3    # "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v4    # "offset":I
    :cond_1
    :goto_1
    return-object v0

    .line 426
    .restart local v1    # "end":I
    .restart local v3    # "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v4    # "offset":I
    :cond_2
    iget-object v0, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 427
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 430
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "offset":I
    :cond_3
    move v5, v1

    .line 431
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, -0x1

    const-wide/16 v6, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 441
    const/4 v5, 0x0

    .line 442
    .local v5, "start":I
    iget-object v8, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 443
    .local v3, "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget v8, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v1, v5, v8

    .line 444
    .local v1, "end":I
    if-lt p1, v5, :cond_3

    if-ge p1, v1, :cond_3

    .line 445
    sub-int v4, p1, v5

    .line 446
    .local v4, "offset":I
    iget-boolean v8, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v8, :cond_0

    .line 447
    add-int/lit8 v4, v4, -0x1

    .line 449
    :cond_0
    if-ne v4, v9, :cond_2

    .line 465
    .end local v1    # "end":I
    .end local v3    # "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v4    # "offset":I
    :cond_1
    :goto_1
    return-wide v6

    .line 452
    .restart local v1    # "end":I
    .restart local v3    # "mPartition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v4    # "offset":I
    :cond_2
    iget v8, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    if-eq v8, v9, :cond_1

    .line 456
    iget-object v0, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 457
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 460
    iget v6, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->idColumnIndex:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    .line 462
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v4    # "offset":I
    :cond_3
    move v5, v1

    .line 463
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, -0x1

    .line 303
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 306
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v4, v5

    .line 307
    .local v0, "end":I
    if-lt p1, v4, :cond_2

    if-ge p1, v0, :cond_2

    .line 308
    sub-int v3, p1, v4

    .line 309
    .local v3, "offset":I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 310
    add-int/lit8 v3, v3, -0x1

    .line 312
    :cond_0
    if-ne v3, v6, :cond_1

    move v5, v6

    .line 315
    :goto_1
    return v5

    :cond_1
    invoke-virtual {p0, v1, v3}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewType(II)I

    move-result v5

    goto :goto_1

    .line 318
    .end local v3    # "offset":I
    :cond_2
    move v4, v0

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "end":I
    :cond_3
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v5
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public getOffsetInPartition(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 252
    const/4 v4, 0x0

    .line 253
    .local v4, "start":I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    .line 254
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    iget v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v4, v5

    .line 255
    .local v0, "end":I
    if-lt p1, v4, :cond_1

    if-ge p1, v0, :cond_1

    .line 256
    sub-int v2, p1, v4

    .line 257
    .local v2, "offset":I
    iget-boolean v5, v3, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 258
    add-int/lit8 v2, v2, -0x1

    .line 264
    .end local v0    # "end":I
    .end local v2    # "offset":I
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    :goto_1
    return v2

    .line 262
    .restart local v0    # "end":I
    .restart local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    move v4, v0

    .line 263
    goto :goto_0

    .line 264
    .end local v0    # "end":I
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPartitionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 235
    const/4 v3, 0x0

    .line 236
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 237
    iget-object v4, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v4, v4, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v3, v4

    .line 238
    .local v0, "end":I
    if-lt p1, v3, :cond_0

    if-ge p1, v0, :cond_0

    .line 243
    .end local v0    # "end":I
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 241
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_0
    move v3, v0

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "end":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPositionForPartition(I)I
    .locals 3
    .param p1, "partition"    # I

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v2, v2, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int/2addr v1, v2

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return v1
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 388
    if-eqz p4, :cond_0

    .line 389
    move-object v6, p4

    .line 393
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 394
    return-object v6

    .line 391
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 326
    const/4 v8, 0x0

    .line 327
    .local v8, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "n":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 328
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v6, v8, v0

    .line 329
    .local v6, "end":I
    if-lt p1, v8, :cond_3

    if-ge p1, v6, :cond_3

    .line 330
    sub-int v3, p1, v8

    .line 331
    .local v3, "offset":I
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 332
    add-int/lit8 v3, v3, -0x1

    .line 335
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/android/common/widget/CompositeCursorAdapter;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 344
    .local v9, "view":Landroid/view/View;
    :goto_1
    if-nez v9, :cond_5

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_1

    .line 350
    .end local v3    # "offset":I
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    move v8, v6

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 353
    .end local v6    # "end":I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 348
    .restart local v3    # "offset":I
    .restart local v6    # "end":I
    .restart local v9    # "view":Landroid/view/View;
    :cond_5
    return-object v9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasHeader(I)Z
    .locals 1
    .param p1, "partition"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-boolean v0, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mCacheValid:Z

    .line 155
    return-void
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->ensureCacheValid()V

    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 489
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->count:I

    add-int v0, v4, v5

    .line 490
    .local v0, "end":I
    if-lt p1, v4, :cond_1

    if-ge p1, v0, :cond_1

    .line 491
    sub-int v3, p1, v4

    .line 492
    .local v3, "offset":I
    iget-object v5, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-boolean v5, v5, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    move v5, v6

    .line 501
    .end local v0    # "end":I
    .end local v3    # "offset":I
    :goto_1
    return v5

    .line 495
    .restart local v0    # "end":I
    .restart local v3    # "offset":I
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/android/common/widget/CompositeCursorAdapter;->isEnabled(II)Z

    move-result v5

    goto :goto_1

    .line 498
    .end local v3    # "offset":I
    :cond_1
    move v4, v0

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "end":I
    :cond_2
    move v5, v6

    .line 501
    goto :goto_1
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method public isPartitionEmpty(I)Z
    .locals 2
    .param p1, "partition"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 227
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 373
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    .line 527
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iget-object v0, v1, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->cursor:Landroid/database/Cursor;

    .line 102
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 107
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public setHasHeader(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 142
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 517
    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationsEnabled:Z

    .line 518
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 521
    :cond_0
    return-void
.end method

.method public setShowIfEmpty(IZ)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/common/widget/CompositeCursorAdapter;->mPartitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    iput-boolean p2, v0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->invalidate()V

    .line 147
    return-void
.end method
