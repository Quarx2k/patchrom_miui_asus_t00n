.class Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;
.super Landroid/os/AsyncTask;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$100(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$300(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v1, v1, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    const/4 v1, 0x1

    # setter for: Lcom/android/emailcommon/service/ServiceProxy;->mTaskCompleted:Z
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/ServiceProxy;->access$402(Lcom/android/emailcommon/service/ServiceProxy;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_2
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection$1;->this$1:Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    iget-object v0, v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;->this$0:Lcom/android/emailcommon/service/ServiceProxy;

    # getter for: Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/emailcommon/service/ServiceProxy;->access$200(Lcom/android/emailcommon/service/ServiceProxy;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit v1

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    goto :goto_0
.end method
