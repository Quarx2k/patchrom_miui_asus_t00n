.class Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingCommandState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/BondStateMachine$1;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v2, "Entering PendingCommandState State"

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$900(Lcom/android/bluetooth/btservice/BondStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 161
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    const/4 v3, 0x0

    .line 162
    .local v3, "result":Z
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    .line 164
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v5, p1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1000(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/os/Message;)V

    .line 222
    :cond_0
    :goto_0
    return v4

    .line 168
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 217
    const-string v4, "BluetoothBondStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received unhandled event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 218
    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v6, v0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$300(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    .line 220
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v6, v0, v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v3

    .line 174
    goto :goto_1

    .line 176
    :pswitch_2
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->cancelBond(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1100(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    .line 177
    goto :goto_1

    .line 179
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 180
    .local v1, "newState":I
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget v7, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->getUnbondReasonFromHALCode(I)I
    invoke-static {v6, v7}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1200(Lcom/android/bluetooth/btservice/BondStateMachine;I)I

    move-result v2

    .line 181
    .local v2, "reason":I
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v6, v0, v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 182
    const/16 v6, 0xb

    if-eq v1, v6, :cond_7

    .line 187
    if-ne v1, v8, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 189
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v6, "not transitioning to stable state"

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 194
    :goto_2
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    const/4 v3, 0x0

    .line 200
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mStableState:Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
    invoke-static {v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1300(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$StableState;

    move-result-object v6

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1400(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    .line 202
    :cond_4
    if-ne v1, v8, :cond_6

    .line 205
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->clearProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1500(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_5
    move v3, v5

    .line 193
    goto :goto_2

    .line 207
    :cond_6
    const/16 v5, 0xc

    if-ne v1, v5, :cond_2

    .line 210
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->setProfilePriorty(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$1600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 213
    :cond_7
    iget-object v5, p0, Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 214
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
