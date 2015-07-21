.class Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;
.super Landroid/database/ContentObserver;
.source "BluetoothMapContentEmailObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 152
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "onChange on thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    iget-object v1, v1, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->access$000(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$1;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->access$000(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 157
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    const-string v1, "BluetoothMapContentEmailObserver"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 163
    return-void
.end method
