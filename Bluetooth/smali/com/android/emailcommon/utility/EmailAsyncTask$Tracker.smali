.class public Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracker"
.end annotation


# instance fields
.field private final mTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .param p1, "x1"    # Lcom/android/emailcommon/utility/EmailAsyncTask;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .param p1, "x1"    # Lcom/android/emailcommon/utility/EmailAsyncTask;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method private add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelOthers(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "current":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v5

    .line 83
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    iget-object v4, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 86
    .local v2, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 88
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    .end local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 91
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/emailcommon/utility/EmailAsyncTask<***>;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 92
    .restart local v2    # "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v4, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    .end local v2    # "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method

.method public cancellAllInterrupt()V
    .locals 4

    .prologue
    .line 68
    iget-object v3, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 70
    .local v1, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    goto :goto_0

    .line 73
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 72
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 73
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    return-void
.end method

.method containsTaskForTest(Lcom/android/emailcommon/utility/EmailAsyncTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "task":Lcom/android/emailcommon/utility/EmailAsyncTask;, "Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getTaskCountForTest()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
