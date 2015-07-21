.class Lcom/android/bluetooth/btservice/RemoteDevices$1;
.super Landroid/os/Handler;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/RemoteDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/RemoteDevices;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 601
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 603
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 604
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    .line 605
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    # invokes: Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$1200(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 609
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 610
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 611
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices$1;->this$0:Lcom/android/bluetooth/btservice/RemoteDevices;

    const/4 v3, 0x0

    # invokes: Lcom/android/bluetooth/btservice/RemoteDevices;->sendMasInstanceIntent(Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V
    invoke-static {v2, v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->access$1300(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
