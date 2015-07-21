.class public Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;
.super Lmiui/app/Activity;
.source "MiuiBluetoothOppTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBluetoothOppTransferHistory"

.field private static final V:Z


# instance fields
.field private mContextMenuPosition:J

.field private mIdColumnId:I

.field private mListView:Landroid/widget/ExpandableListView;

.field private mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

.field private mShowAllIncoming:Z

.field private mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .locals 9

    .prologue
    .line 245
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v7}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getGroupCount()I

    move-result v3

    .line 246
    .local v3, "groupCount":I
    if-lez v3, :cond_2

    .line 247
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 248
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v7, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChildrenCount(I)I

    move-result v2

    .line 249
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 250
    iget-object v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v7, v4, v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    .local v0, "childCursor":Landroid/database/Cursor;
    iget v7, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 252
    .local v6, "sessionId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 249
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "childCursor":Landroid/database/Cursor;
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "sessionId":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    .end local v2    # "count":I
    .end local v5    # "j":I
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    .line 258
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private getClearableCount()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getGroupCount()I

    move-result v1

    .line 233
    .local v1, "groupCount":I
    if-lez v1, :cond_0

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private openCompleteTransfer(I)V
    .locals 6
    .param p1, "sessionId"    # I

    .prologue
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v2

    .line 276
    .local v2, "transInfo":Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    if-nez v2, :cond_0

    .line 277
    const-string v3, "MiuiBluetoothOppTransferHistory"

    const-string v4, "Error: Can not get data from db"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 284
    iget-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    invoke-static {p0, v3, v4, v5, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    goto :goto_0

    .line 287
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v1, "in":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private promptClearList()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04006c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$1;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$1;-><init>(Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method private setupList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    if-nez v4, :cond_0

    .line 88
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    .line 89
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    const v5, 0x7f070008

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 92
    const v4, 0x7f0400ab

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mShowAllIncoming:Z

    .line 98
    iget-boolean v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mShowAllIncoming:Z

    invoke-static {p0, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getAdapter(Landroid/content/Context;Z)Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    .line 99
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "direction"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "dir":I
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getGroupCount()I

    move-result v2

    .line 103
    .local v2, "groupCount":I
    const/4 v3, 0x0

    .local v3, "groupPos":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 105
    .local v1, "direction":I
    if-ne v1, v0, :cond_2

    .line 106
    iget-object v4, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 110
    .end local v1    # "direction":I
    :cond_1
    return-void

    .line 103
    .restart local v1    # "direction":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateNotificationWhenBtDisabled()V
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 300
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateNotification()V

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 264
    .local v0, "childCursor":Landroid/database/Cursor;
    iget v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 265
    .local v1, "sessionId":I
    invoke-direct {p0, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->openCompleteTransfer(I)V

    .line 266
    const/4 v2, 0x1

    return v2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    .line 158
    iget-wide v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mContextMenuPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 159
    .local v3, "groupPosition":I
    iget-wide v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mContextMenuPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 160
    .local v1, "childPosition":I
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v6, v3, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    .local v0, "childCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 162
    iget v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mIdColumnId:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 163
    .local v4, "sessionId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 175
    .end local v4    # "sessionId":I
    :cond_0
    :pswitch_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 165
    .restart local v4    # "sessionId":I
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->openCompleteTransfer(I)V

    .line 166
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 169
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 170
    .local v2, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 171
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->updateNotificationWhenBtDisabled()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->setContentView(I)V

    .line 117
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mNotifier:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    .line 118
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 180
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getGroupCount()I

    move-result v6

    if-lez v6, :cond_0

    move-object v5, p3

    .line 181
    check-cast v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 182
    .local v5, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v6, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 206
    .end local v5    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v5    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :cond_1
    iget-wide v6, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    .line 188
    .local v3, "groupPosition":I
    iget-wide v6, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 189
    .local v1, "childPosition":I
    iget-object v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v6, v3, v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, "childCursor":Landroid/database/Cursor;
    iget-wide v6, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    iput-wide v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mContextMenuPosition:J

    .line 192
    const-string v6, "hint"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "fileName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 195
    const v6, 0x7f040045

    invoke-virtual {p0, v6}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 199
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 200
    .local v4, "inflater":Landroid/view/MenuInflater;
    iget-boolean v6, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-eqz v6, :cond_3

    .line 201
    const/high16 v6, 0x7f060000

    invoke-virtual {v4, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 203
    :cond_3
    const v6, 0x7f060002

    invoke-virtual {v4, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 131
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f060001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->promptClearList()V

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f070020
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 138
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mShowAllIncoming:Z

    if-nez v2, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->getClearableCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 140
    .local v1, "showClear":Z
    :goto_0
    const v2, 0x7f070020

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 141
    .local v0, "mi":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 143
    .end local v0    # "mi":Landroid/view/MenuItem;
    .end local v1    # "showClear":Z
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 139
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 124
    invoke-direct {p0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->setupList()V

    .line 125
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory;->mTransferAdapter:Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/MiuiBluetoothOppTransferHistory$TransferHistoryAdapter;->releaseAllCursors()V

    .line 211
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    .line 212
    return-void
.end method
