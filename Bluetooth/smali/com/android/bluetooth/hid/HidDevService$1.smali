.class Lcom/android/bluetooth/hid/HidDevService$1;
.super Landroid/os/Handler;
.source "HidDevService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 80
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidDevService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidDevService;->access$000(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 84
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_3

    const/4 v12, 0x1

    .line 87
    .local v12, "success":Z
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    invoke-static {v15}, Lcom/android/bluetooth/hid/HidDevService;->access$100(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v15

    invoke-interface {v14, v4, v15, v12}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_3
    if-eqz v12, :cond_4

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    new-instance v15, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    invoke-static/range {v17 .. v17}, Lcom/android/bluetooth/hid/HidDevService;->access$100(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;-><init>(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)V

    # setter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidDevService;->access$402(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 98
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$400(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 99
    # getter for: Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "IBinder.linkToDeath() ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_4
    if-nez v12, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/4 v15, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidDevService;->mAppConfig:Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidDevService;->access$102(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/4 v15, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidDevService;->access$202(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    goto/16 :goto_0

    .line 83
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v12    # "success":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 84
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 88
    .restart local v12    # "success":Z
    :catch_0
    move-exception v5

    .line 89
    .local v5, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->access$300()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "e="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v5

    .line 101
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 103
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$400(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 106
    .restart local v1    # "binder":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$400(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 107
    # getter for: Lcom/android/bluetooth/hid/HidDevService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->access$300()Ljava/lang/String;

    move-result-object v14

    const-string v15, "IBinder.unlinkToDeath() ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$400(Lcom/android/bluetooth/hid/HidDevService;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->cleanup()V

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    const/4 v15, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidDevService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidDevService;->access$402(Lcom/android/bluetooth/hid/HidDevService;Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;

    goto :goto_4

    .line 108
    :catch_2
    move-exception v5

    .line 109
    .local v5, "e":Ljava/util/NoSuchElementException;
    invoke-virtual {v5}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_5

    .line 125
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "e":Ljava/util/NoSuchElementException;
    .end local v12    # "success":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidDevService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidDevService;->access$500(Lcom/android/bluetooth/hid/HidDevService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 126
    .restart local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 127
    .local v6, "halState":I
    # invokes: Lcom/android/bluetooth/hid/HidDevService;->convertHalState(I)I
    invoke-static {v6}, Lcom/android/bluetooth/hid/HidDevService;->access$600(I)I

    move-result v11

    .line 130
    .local v11, "state":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14, v4, v11}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 136
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # invokes: Lcom/android/bluetooth/hid/HidDevService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v4, v11}, Lcom/android/bluetooth/hid/HidDevService;->access$700(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v5

    .line 133
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 141
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v6    # "halState":I
    .end local v11    # "state":I
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    int-to-byte v13, v14

    .line 142
    .local v13, "type":B
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    int-to-byte v7, v14

    .line 143
    .local v7, "id":B
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v14, :cond_6

    const/4 v2, 0x0

    .line 146
    .local v2, "bufferSize":I
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14, v13, v7, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onGetReport(BBI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 148
    :catch_4
    move-exception v5

    .line 149
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 143
    .end local v2    # "bufferSize":I
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_7

    .line 155
    .end local v7    # "id":B
    .end local v13    # "type":B
    :pswitch_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    int-to-byte v10, v14

    .line 156
    .local v10, "reportType":B
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    int-to-byte v9, v14

    .line 157
    .local v9, "reportId":B
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 160
    .local v3, "data":[B
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14, v10, v9, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetReport(BB[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 162
    :catch_5
    move-exception v5

    .line 163
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 169
    .end local v3    # "data":[B
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v9    # "reportId":B
    .end local v10    # "reportType":B
    :pswitch_4
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    int-to-byte v8, v14

    .line 172
    .local v8, "protocol":B
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14, v8}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onSetProtocol(B)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 174
    :catch_6
    move-exception v5

    .line 175
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 180
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v8    # "protocol":B
    :pswitch_5
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    int-to-byte v9, v14

    .line 181
    .restart local v9    # "reportId":B
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 184
    .restart local v3    # "data":[B
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14, v9, v3}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onIntrData(B[B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 186
    :catch_7
    move-exception v5

    .line 187
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 193
    .end local v3    # "data":[B
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v9    # "reportId":B
    :pswitch_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidDevService$1;->this$0:Lcom/android/bluetooth/hid/HidDevService;

    # getter for: Lcom/android/bluetooth/hid/HidDevService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidDevService;->access$200(Lcom/android/bluetooth/hid/HidDevService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v14

    invoke-interface {v14}, Landroid/bluetooth/IBluetoothHidDeviceCallback;->onVirtualCableUnplug()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 195
    :catch_8
    move-exception v5

    .line 196
    .restart local v5    # "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
