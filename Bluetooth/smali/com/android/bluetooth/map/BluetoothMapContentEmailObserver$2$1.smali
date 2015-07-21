.class Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;
.super Landroid/os/Handler;
.source "BluetoothMapContentEmailObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailContentObserver.Hanlder"


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    const-string v0, "EmailContentObserver.Hanlder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mas Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;

    iget-object v2, v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2;->this$0:Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver;->mMasId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 189
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapContentEmailObserver$2$1;)V

    const-string v2, "Email Content Observer Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
