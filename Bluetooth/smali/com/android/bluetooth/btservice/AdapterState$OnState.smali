.class Lcom/android/bluetooth/btservice/AdapterState$OnState;
.super Lcom/android/internal/util/State;
.source "AdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterState;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/bluetooth/btservice/AdapterState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/btservice/AdapterState;
    .param p2, "x1"    # Lcom/android/bluetooth/btservice/AdapterState$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterState$OnState;-><init>(Lcom/android/bluetooth/btservice/AdapterState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-string v2, "Entering On State"

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->infoLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$300(Lcom/android/bluetooth/btservice/AdapterState;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterState;->access$400(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 156
    .local v0, "adapterService":Lcom/android/bluetooth/btservice/AdapterService;
    if-nez v0, :cond_0

    .line 157
    const-string v1, "BluetoothAdapterState"

    const-string v2, "enter OnState after cleanup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->autoConnect()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$800(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    .line 166
    .local v0, "adapterProperties":Lcom/android/bluetooth/btservice/AdapterProperties;
    if-nez v0, :cond_0

    .line 167
    const-string v3, "BluetoothAdapterState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive message at OnState after cleanup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return v2

    .line 172
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 191
    const-string v3, "BluetoothAdapterState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: UNEXPECTED MESSAGE: CURRENT_STATE=ON, MESSAGE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :sswitch_0
    const-string v2, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=ON, MESSAGE = USER_TURN_OFF"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0xd

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->notifyAdapterStateChange(I)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$500(Lcom/android/bluetooth/btservice/AdapterState;I)V

    .line 176
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;->setTurningOff(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    # getter for: Lcom/android/bluetooth/btservice/AdapterState;->mPendingCommandState:Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;
    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$600(Lcom/android/bluetooth/btservice/AdapterState;)Lcom/android/bluetooth/btservice/AdapterState$PendingCommandState;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/btservice/AdapterState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Lcom/android/bluetooth/btservice/AdapterState;->access$900(Lcom/android/bluetooth/btservice/AdapterState;Lcom/android/internal/util/IState;)V

    .line 181
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v4, 0x69

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/btservice/AdapterState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 182
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterState$OnState;->this$0:Lcom/android/bluetooth/btservice/AdapterState;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 183
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothDisable()V

    .end local v1    # "m":Landroid/os/Message;
    :goto_1
    move v2, v3

    .line 194
    goto :goto_0

    .line 187
    :sswitch_1
    const-string v2, "BluetoothAdapterState"

    const-string v4, "CURRENT_STATE=ON, MESSAGE = USER_TURN_ON"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "BluetoothAdapterState"

    const-string v4, "Bluetooth already ON, ignoring USER_TURN_ON"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
