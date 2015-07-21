.class Lcom/android/emailcommon/service/EmailServiceProxy$1;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iput-wide p3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$accountId:J

    iput-wide p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    iput-boolean p7, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    # getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    iget-wide v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$accountId:J

    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    iget-boolean v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$background:Z

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailService;->loadAttachment(Lcom/android/emailcommon/service/IEmailServiceCallback;JJZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_1
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$cb:Lcom/android/emailcommon/service/IEmailServiceCallback;

    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$1;->val$attachmentId:J

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    goto :goto_0
.end method
