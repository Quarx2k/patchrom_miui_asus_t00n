.class Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;
.super Ljava/lang/Object;
.source "BluetoothMapContentEmailObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->updateEmailBox()V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->update(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;->this$2:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    # invokes: Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->sendEvents()V
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->access$100(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;)V

    .line 194
    return-void
.end method
