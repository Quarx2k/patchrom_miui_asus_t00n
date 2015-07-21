.class Lcom/android/emailcommon/service/PolicyServiceProxy$2;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$policy:Lcom/android/emailcommon/provider/Policy;

.field final synthetic val$securityKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$policy:Lcom/android/emailcommon/provider/Policy;

    iput-object p5, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$securityKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    # getter for: Lcom/android/emailcommon/service/PolicyServiceProxy;->mService:Lcom/android/emailcommon/service/IPolicyService;
    invoke-static {v0}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$policy:Lcom/android/emailcommon/provider/Policy;

    iget-object v4, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$2;->val$securityKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/service/IPolicyService;->setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 77
    return-void
.end method
