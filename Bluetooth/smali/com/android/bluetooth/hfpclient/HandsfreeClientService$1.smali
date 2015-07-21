.class Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "HandsfreeClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HandsfreeClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 106
    .local v2, "streamType":I
    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    .line 107
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 109
    .local v3, "streamValue":I
    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "streamPrevValue":I
    if-eq v3, v5, :cond_0

    if-eq v3, v1, :cond_0

    .line 113
    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->access$000(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/hfpclient/HandsfreeClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    # getter for: Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;
    invoke-static {v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;->access$000(Lcom/android/bluetooth/hfpclient/HandsfreeClientService;)Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/hfpclient/HandsfreeClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 118
    .end local v1    # "streamPrevValue":I
    .end local v2    # "streamType":I
    .end local v3    # "streamValue":I
    :cond_0
    return-void
.end method
