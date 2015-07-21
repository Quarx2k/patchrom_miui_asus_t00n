.class public abstract Lcom/android/emailcommon/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;
    }
.end annotation


# static fields
.field private static final DEBUG_PROXY:Z = false

.field public static final EXTRA_FORCE_SHUTDOWN:Ljava/lang/String; = "ServiceProxy.FORCE_SHUTDOWN"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field private mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

.field private mTaskCompleted:Z

.field private mTaskSet:Z

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 58
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    .line 90
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    .line 93
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/emailcommon/service/ServiceProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/ServiceProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z

    return p1
.end method

.method public static getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy;->getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIntentStringForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "packageName":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 79
    .local v0, "lastDot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getTimeout()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    return v0
.end method

.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method protected setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .locals 4
    .param p1, "task"    # Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 160
    iget-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call setTask twice on the same ServiceProxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-boolean v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTaskSet:Z

    .line 164
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J

    .line 170
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public setTimeout(I)Lcom/android/emailcommon/service/ServiceProxy;
    .locals 0
    .param p1, "secs"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 152
    return-object p0
.end method

.method public test()Z
    .locals 3

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/ServiceProxy$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    const-string v2, "test"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 224
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected waitForCompletion()V
    .locals 8

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 186
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This cannot be called on the main thread."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 190
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 195
    .local v0, "time":J
    :try_start_1
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 205
    return-void

    .line 204
    .end local v0    # "time":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 196
    .restart local v0    # "time":J
    :catch_0
    move-exception v2

    goto :goto_0
.end method
