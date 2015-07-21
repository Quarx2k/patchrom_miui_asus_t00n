.class Lcom/android/bluetooth/pbap/BluetoothPbapService$2;
.super Landroid/bluetooth/IBluetoothPbap$Stub;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    .line 798
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const-string v0, "BluetoothPbapService"

    const-string v1, "connect(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    return v3

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 809
    const-string v0, "BluetoothPbapService"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const-string v0, "BluetoothPbapService"

    const-string v1, "disconnect(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    monitor-enter v1

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 833
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 821
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/obex/ServerSession;->close()V

    .line 823
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v2, 0x0

    # setter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;
    invoke-static {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1802(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;

    .line 826
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeConnectionSocket()V
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    .line 828
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const/4 v2, 0x0

    const/4 v3, 0x2

    # invokes: Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V
    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$2000(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 773
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClient"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 776
    const-string v1, "BluetoothPbapService"

    const-string v2, "getClient(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    :goto_0
    return-object v0

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 761
    const-string v0, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    const-string v0, "BluetoothPbapService"

    const-string v1, "getState(): not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x0

    .line 769
    :goto_0
    return v0

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v0

    goto :goto_0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 788
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    const-string v1, "BluetoothPbapService"

    const-string v2, "isConnected(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    # getter for: Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->access$400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
