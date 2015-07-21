.class Lcom/android/bluetooth/opp/MiuiTransferManager$2;
.super Ljava/lang/Object;
.source "MiuiTransferManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/MiuiTransferManager;->startWD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/MiuiTransferManager;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create group callback onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2P_UNSUPPORTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->mListener:Lcom/android/bluetooth/opp/MiuiOnTransferListener;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$100(Lcom/android/bluetooth/opp/MiuiTransferManager;)Lcom/android/bluetooth/opp/MiuiOnTransferListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/MiuiOnTransferListener;->onTransferReady(Landroid/net/wifi/WifiConfiguration;)V

    .line 340
    return-void

    .line 334
    :cond_1
    if-nez p1, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BUSY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/bluetooth/opp/MiuiTransferManager$2;->this$0:Lcom/android/bluetooth/opp/MiuiTransferManager;

    # getter for: Lcom/android/bluetooth/opp/MiuiTransferManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/bluetooth/opp/MiuiTransferManager;->access$000(Lcom/android/bluetooth/opp/MiuiTransferManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create group callback onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method
