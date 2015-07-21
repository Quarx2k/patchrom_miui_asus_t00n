.class Lcom/android/bluetooth/btservice/BondStateMachine$StableState;
.super Lcom/android/internal/util/State;
.source "BondStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BondStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/BondStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/BondStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/BondStateMachine;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/BondStateMachine$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;-><init>(Lcom/android/bluetooth/btservice/BondStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    const-string v1, "StableState(): Entering Off State"

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->infoLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$200(Lcom/android/bluetooth/btservice/BondStateMachine;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 111
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 141
    :pswitch_0
    const-string v3, "BluetoothBondStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unhandled state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v2

    .line 114
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->createBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v2, v0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$300(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    :cond_0
    :goto_1
    move v2, v3

    .line 144
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->removeBond(Landroid/bluetooth/BluetoothDevice;Z)Z
    invoke-static {v2, v0, v3}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$400(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_1

    .line 120
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 122
    .local v1, "newState":I
    const/16 v4, 0xb

    if-ne v1, v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mDevices:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$500(Lcom/android/bluetooth/btservice/BondStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 128
    iget-object v2, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # getter for: Lcom/android/bluetooth/btservice/BondStateMachine;->mPendingCommandState:Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$700(Lcom/android/bluetooth/btservice/BondStateMachine;)Lcom/android/bluetooth/btservice/BondStateMachine$PendingCommandState;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$800(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 132
    :cond_2
    const-string v4, "BluetoothBondStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In stable state, received invalid newState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/bluetooth/btservice/BondStateMachine$StableState;->this$0:Lcom/android/bluetooth/btservice/BondStateMachine;

    # invokes: Lcom/android/bluetooth/btservice/BondStateMachine;->sendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->access$600(Lcom/android/bluetooth/btservice/BondStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
