.class public Lcom/android/bluetooth/wipower/BTEventHandler;
.super Landroid/content/BroadcastReceiver;
.source "BTEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTEventHandler"

.field private static final V:Z


# instance fields
.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v2, "ro.bluetooth.wipower"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    const-string v2, "BTEventHandler"

    const-string v3, "A4WP is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/wipower/BTEventHandler;->state:I

    .line 59
    const/16 v2, 0xc

    iget v3, p0, Lcom/android/bluetooth/wipower/BTEventHandler;->state:I

    if-ne v2, v3, :cond_3

    .line 62
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/wipower/WipowerService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 64
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 65
    const-string v2, "BTEventHandler"

    const-string v3, "Wipower service started successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    const-string v2, "BTEventHandler"

    const-string v3, "Could Not Start Wipower Service "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_3
    const/16 v2, 0xa

    iget v3, p0, Lcom/android/bluetooth/wipower/BTEventHandler;->state:I

    if-ne v2, v3, :cond_0

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/wipower/WipowerService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
