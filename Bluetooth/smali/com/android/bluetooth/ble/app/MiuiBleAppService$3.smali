.class Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiBleAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/MiuiBleAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0xa

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # invokes: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->updateDevices()V
    invoke-static {v2}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$200(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    .line 94
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1    # "state":I
    :cond_1
    if-ne v1, v3, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/MiuiBleAppService$3;->this$0:Lcom/android/bluetooth/ble/app/MiuiBleAppService;

    # invokes: Lcom/android/bluetooth/ble/app/MiuiBleAppService;->stopDevices()V
    invoke-static {v2}, Lcom/android/bluetooth/ble/app/MiuiBleAppService;->access$300(Lcom/android/bluetooth/ble/app/MiuiBleAppService;)V

    goto :goto_0
.end method
