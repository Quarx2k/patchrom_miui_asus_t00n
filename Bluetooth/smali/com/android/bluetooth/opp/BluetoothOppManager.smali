.class public Lcom/android/bluetooth/opp/BluetoothOppManager;
.super Ljava/lang/Object;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final ARRAYLIST_ITEM_SEPERATOR:Ljava/lang/String; = ";"

.field private static final FILE_URI:Ljava/lang/String; = "FILE_URI"

.field private static final FILE_URIS:Ljava/lang/String; = "FILE_URIS"

.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final MIME_TYPE:Ljava/lang/String; = "MIMETYPE"

.field private static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "MIMETYPE_MULTIPLE"

.field private static final MULTIPLE_FLAG:Ljava/lang/String; = "MULTIPLE_FLAG"

.field private static final OPP_PREFERENCE_FILE:Ljava/lang/String; = "OPPMGR"

.field private static final SENDING_FLAG:Ljava/lang/String; = "SENDINGFLAG"

.field private static final TAG:Ljava/lang/String; = "BluetoothOppManager"

.field private static final V:Z = false

.field private static final WHITELIST_DURATION_MS:I = 0x3a98


# instance fields
.field public isA2DPPlaying:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mIsHandoverInitiated:Z

.field private mMimeTypeOfSendingFile:Ljava/lang/String;

.field private mMimeTypeOfSendingFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mfileNumInBatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    .line 378
    return-void
.end method

.method static synthetic access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cleanupWhitelist()V
    .locals 8

    .prologue
    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 162
    .local v0, "curTime":J
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 164
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 131
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->init(Landroid/content/Context;)Z

    .line 133
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 141
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return v1

    .line 143
    :cond_0
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    .line 145
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->restoreApplicationData()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->isA2DPPlaying:Z

    goto :goto_0
.end method

.method private restoreApplicationData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 195
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v4, "SENDINGFLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 199
    const-string v4, "MIMETYPE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 200
    const-string v4, "FILE_URI"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 201
    const-string v4, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 202
    const-string v4, "MULTIPLE_FLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 207
    const-string v4, "FILE_URIS"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "strUris":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 209
    if-eqz v3, :cond_0

    .line 210
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "splitUri":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v2    # "splitUri":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    return-void
.end method

.method private storeApplicationData()V
    .locals 9

    .prologue
    .line 224
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v7, "OPPMGR"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 226
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "SENDINGFLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    const-string v6, "MULTIPLE_FLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v6, :cond_1

    .line 229
    const-string v6, "MIMETYPE_MULTIPLE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 232
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 233
    .local v5, "uriContent":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "uriContent":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "strUris":Ljava/lang/String;
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v6, "MIMETYPE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    const-string v6, "FILE_URI"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "strUris":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    return-void

    .line 242
    :cond_1
    const-string v6, "MIMETYPE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const-string v6, "FILE_URI"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v6, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addToWhitelist(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    if-nez p1, :cond_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 176
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 172
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 180
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public disableBluetooth()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 313
    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 304
    :cond_0
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    monitor-exit p0

    return v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    if-nez v0, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_1
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isWhitelisted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->cleanupWhitelist()V

    .line 185
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 186
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 188
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "uriString"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 255
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 256
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 257
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    .line 260
    .local v0, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 262
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 264
    .end local v0    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p3, "isHandover"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 269
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 270
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 272
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    .line 273
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 274
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 276
    .local v1, "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v2, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    goto :goto_0

    .line 281
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sendFileInfo":Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 280
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 281
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    return-void
.end method

.method public startTransfer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 348
    const-string v1, "BluetoothOppManager"

    const-string v2, "Too many shares user triggered concurrently!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v9, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v9, "in":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040049

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    monitor-exit p0

    .line 368
    .end local v9    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    iget-boolean v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mIsHandoverInitiated:Z

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 362
    .local v0, "insertThread":Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    .line 365
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->start()V

    goto :goto_0

    .line 365
    .end local v0    # "insertThread":Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
