.class public Lcom/android/emailcommon/service/PolicyServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IPolicyService;


# static fields
.field private static final DEBUG_PROXY:Z = false

.field private static final TAG:Ljava/lang/String; = "PolicyServiceProxy"


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IPolicyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "POLICY_INTENT"

    invoke-static {p1, v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    iput-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 32
    iput-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/PolicyServiceProxy;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    return-object v0
.end method

.method public static isActive(Landroid/content/Context;Lcom/android/emailcommon/provider/Policy;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policies"    # Lcom/android/emailcommon/provider/Policy;

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remoteWipe(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->remoteWipe()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;
    .param p2, "newState"    # Z

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountHoldFlag(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PolicyService transaction failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setAccountPolicy(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyService transaction failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4
    .param p1, "arg0"    # Lcom/android/emailcommon/provider/Policy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50
    new-instance v1, Lcom/android/emailcommon/service/PolicyServiceProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/emailcommon/service/PolicyServiceProxy$1;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/provider/Policy;)V

    const-string v2, "isActive"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 60
    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 63
    const-string v1, "PolicyServiceProxy"

    const-string v2, "PolicyService unavailable in isActive; assuming false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/emailcommon/service/IPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;

    .line 41
    return-void
.end method

.method public remoteWipe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$3;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/PolicyServiceProxy$3;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;)V

    const-string v1, "remoteWipe"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 90
    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 2
    .param p1, "arg0"    # J
    .param p3, "arg1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/PolicyServiceProxy$4;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JZ)V

    const-string v1, "setAccountHoldFlag"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 100
    return-void
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 6
    .param p1, "accountId"    # J
    .param p3, "policy"    # Lcom/android/emailcommon/provider/Policy;
    .param p4, "securityKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/PolicyServiceProxy$2;-><init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    const-string v1, "setAccountPolicy"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 79
    invoke-virtual {p0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->waitForCompletion()V

    .line 80
    return-void
.end method
