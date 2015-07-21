.class public Lcom/android/emailcommon/service/EmailServiceProxy;
.super Lcom/android/emailcommon/service/ServiceProxy;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# static fields
.field public static final AUTO_DISCOVER_BUNDLE_ERROR_CODE:Ljava/lang/String; = "autodiscover_error_code"

.field public static final AUTO_DISCOVER_BUNDLE_HOST_AUTH:Ljava/lang/String; = "autodiscover_host_auth"

.field public static final DEBUG_BIT:I = 0x1

.field public static final DEBUG_ENABLE_STRICT_MODE:I = 0x8

.field public static final DEBUG_FILE_BIT:I = 0x4

.field public static final DEBUG_VERBOSE_BIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EmailServiceProxy"

.field public static final VALIDATE_BUNDLE_ERROR_MESSAGE:Ljava/lang/String; = "validate_error_message"

.field public static final VALIDATE_BUNDLE_POLICY_SET:Ljava/lang/String; = "validate_policy_set"

.field public static final VALIDATE_BUNDLE_PROTOCOL_VERSION:Ljava/lang/String; = "validate_protocol_version"

.field public static final VALIDATE_BUNDLE_REDIRECT_ADDRESS:Ljava/lang/String; = "validate_redirect_address"

.field public static final VALIDATE_BUNDLE_RESULT_CODE:Ljava/lang/String; = "validate_result_code"

.field public static final VALIDATE_BUNDLE_UNSUPPORTED_POLICIES:Ljava/lang/String; = "validate_unsupported_policies"


# instance fields
.field private final isRemote:Z

.field private mReturn:Ljava/lang/Object;

.field private mService:Lcom/android/emailcommon/service/IEmailService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 88
    :try_start_0
    invoke-static {p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-static {p1}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/android/emailcommon/service/ServiceProxy;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .param p0, "x0"    # Lcom/android/emailcommon/service/EmailServiceProxy;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/emailcommon/service/EmailServiceProxy;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Lcom/android/emailcommon/service/EmailServiceProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$3;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "autoDiscover"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 190
    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 195
    const-string v1, "EmailServiceProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoDiscover returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "autodiscover_error_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public deleteAccountPIMData(Ljava/lang/String;)V
    .locals 2
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$8;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/String;)V

    const-string v1, "deleteAccountPIMData"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 282
    return-void
.end method

.method public isRemote()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->isRemote:Z

    return v0
.end method

.method public loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 8
    .param p1, "cb"    # Lcom/android/emailcommon/service/IEmailServiceCallback;
    .param p2, "accountId"    # J
    .param p4, "attachmentId"    # J
    .param p6, "background"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/emailcommon/service/EmailServiceProxy$1;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V

    const-string v1, "loadAttachment"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method public loadMore(J)V
    .locals 2
    .param p1, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$7;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "loadMore"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 264
    return-void
.end method

.method public onConnected(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/emailcommon/service/IEmailService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;

    .line 98
    return-void
.end method

.method public pushModify(J)V
    .locals 2
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$11;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "sendMail"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 343
    return-void
.end method

.method public searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "searchParams"    # Lcom/android/emailcommon/service/SearchParams;
    .param p4, "destMailboxId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$9;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/EmailServiceProxy$9;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V

    const-string v1, "searchMessages"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 308
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public sendMail(J)V
    .locals 2
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$10;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "sendMail"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 328
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "response"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/EmailServiceProxy$6;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;JI)V

    const-string v1, "sendMeetingResponse"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 248
    return-void
.end method

.method public setLogging(I)V
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$5;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;I)V

    const-string v1, "setLogging"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 231
    return-void
.end method

.method public sync(JZI[J)V
    .locals 0
    .param p1, "accountId"    # J
    .param p3, "updateFolderList"    # Z
    .param p4, "mailboxType"    # I
    .param p5, "folders"    # [J

    .prologue
    .line 347
    return-void
.end method

.method public updateFolderList(J)V
    .locals 2
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy$4;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;J)V

    const-string v1, "updateFolderList"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 215
    return-void
.end method

.method public validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
    .locals 6
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 151
    new-instance v2, Lcom/android/emailcommon/service/EmailServiceProxy$2;

    invoke-direct {v2, p0, p1}, Lcom/android/emailcommon/service/EmailServiceProxy$2;-><init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/provider/HostAuth;)V

    const-string v3, "validate"

    invoke-virtual {p0, v2, v3}, Lcom/android/emailcommon/service/EmailServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/emailcommon/service/EmailServiceProxy;->waitForCompletion()V

    .line 158
    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "validate_result_code"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v0

    .line 166
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 163
    .end local v1    # "bundle":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 164
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-class v2, Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 165
    const-string v2, "EmailServiceProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validate returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "validate_result_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v1, v0

    .line 166
    .restart local v1    # "bundle":Ljava/lang/Object;
    goto :goto_0
.end method
