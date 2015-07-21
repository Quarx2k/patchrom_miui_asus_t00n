.class public Lcom/android/emailcommon/service/AccountServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IAccountService;


# static fields
.field public static final DEFAULT_ACCOUNT_COLOR:I = -0xffff01


# instance fields
.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IAccountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "ACCOUNT_INTENT"

    invoke-static {p1, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getIntentForEmailPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/AccountServiceProxy;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/AccountServiceProxy;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountColor(J)I
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 80
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$4;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "getAccountColor"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 86
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 87
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 88
    const v0, -0xffff01

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/AccountServiceProxy$5;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V

    const-string v1, "getConfigurationData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 104
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$6;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy$6;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;)V

    const-string v1, "getDeviceId"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 120
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 121
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyLoginFailed(JLjava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/AccountServiceProxy$1;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;JLjava/lang/String;)V

    const-string v1, "notifyLoginFailed"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 53
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .locals 2
    .param p1, "accountId"    # J

    .prologue
    .line 57
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$2;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;J)V

    const-string v1, "notifyLoginSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 63
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/android/emailcommon/service/IAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;

    .line 38
    return-void
.end method

.method public reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "accountManagerType"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/AccountServiceProxy$3;-><init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reconcileAccounts"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/emailcommon/service/AccountServiceProxy;->waitForCompletion()V

    .line 75
    return-void
.end method
