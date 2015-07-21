.class Lcom/android/bluetooth/hid/HidService$1;
.super Landroid/os/Handler;
.source "HidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 155
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->connectHidNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$000(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v14

    if-nez v14, :cond_1

    .line 157
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v15, 0x3

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v15}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v15, 0x0

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v15}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 161
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v3}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 166
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 167
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$300(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v14

    if-nez v14, :cond_0

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v15, 0x3

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v15}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v15, 0x0

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v15}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 176
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidService;->access$400(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 177
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 178
    .local v4, "halState":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # getter for: Lcom/android/bluetooth/hid/HidService;->mInputDevices:Ljava/util/Map;
    invoke-static {v14}, Lcom/android/bluetooth/hid/HidService;->access$500(Lcom/android/bluetooth/hid/HidService;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 179
    .local v7, "prevStateInteger":Ljava/lang/Integer;
    if-nez v7, :cond_2

    const/4 v6, 0x0

    .line 183
    .local v6, "prevState":I
    :goto_1
    if-nez v4, :cond_3

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v14, v3}, Lcom/android/bluetooth/hid/HidService;->access$600(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->disconnectHidNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$300(Lcom/android/bluetooth/hid/HidService;[B)Z

    .line 191
    :goto_2
    const/4 v14, 0x1

    if-eq v4, v14, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    const/4 v15, 0x0

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 179
    .end local v6    # "prevState":I
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 189
    .restart local v6    # "prevState":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->convertHalState(I)I
    invoke-static {v4}, Lcom/android/bluetooth/hid/HidService;->access$700(I)I

    move-result v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v15}, Lcom/android/bluetooth/hid/HidService;->access$100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    .line 197
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # setter for: Lcom/android/bluetooth/hid/HidService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14, v3}, Lcom/android/bluetooth/hid/HidService;->access$202(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 203
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "halState":I
    .end local v6    # "prevState":I
    .end local v7    # "prevStateInteger":Ljava/lang/Integer;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 204
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->getProtocolModeNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$800(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v14

    if-nez v14, :cond_0

    .line 205
    const-string v14, "HidService"

    const-string v15, "Error: get protocol mode native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidService;->access$900(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 213
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 214
    .local v9, "protocolMode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v9}, Lcom/android/bluetooth/hid/HidService;->access$1000(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 219
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "protocolMode":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 220
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->virtualUnPlugNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$1100(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v14

    if-nez v14, :cond_0

    .line 221
    const-string v14, "HidService"

    const-string v15, "Error: virtual unplug native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 227
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 228
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    int-to-byte v9, v14

    .line 229
    .local v9, "protocolMode":B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sending set protocol mode("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$1200(Lcom/android/bluetooth/hid/HidService;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->setProtocolModeNative([BB)Z
    invoke-static {v14, v15, v9}, Lcom/android/bluetooth/hid/HidService;->access$1300(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v14

    if-nez v14, :cond_0

    .line 231
    const-string v14, "HidService"

    const-string v15, "Error: set protocol mode native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 237
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "protocolMode":B
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 238
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 239
    .local v2, "data":Landroid/os/Bundle;
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    .line 240
    .local v12, "reportType":B
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT_ID"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    .line 241
    .local v11, "reportId":B
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "bufferSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->getReportNative([BBBI)Z
    invoke-static {v14, v15, v12, v11, v1}, Lcom/android/bluetooth/hid/HidService;->access$1400(Lcom/android/bluetooth/hid/HidService;[BBBI)Z

    move-result v14

    if-nez v14, :cond_0

    .line 243
    const-string v14, "HidService"

    const-string v15, "Error: get report native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v1    # "bufferSize":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v11    # "reportId":B
    .end local v12    # "reportType":B
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 250
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 251
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT_TYPE"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    .line 252
    .restart local v12    # "reportType":B
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->setReportNative([BBLjava/lang/String;)Z
    invoke-static {v14, v15, v12, v10}, Lcom/android/bluetooth/hid/HidService;->access$1500(Lcom/android/bluetooth/hid/HidService;[BBLjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 254
    const-string v14, "HidService"

    const-string v15, "Error: set report native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "report":Ljava/lang/String;
    .end local v12    # "reportType":B
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 262
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string v14, "android.bluetooth.BluetoothInputDevice.extra.REPORT"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .restart local v10    # "report":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->sendDataNative([BLjava/lang/String;)Z
    invoke-static {v14, v15, v10}, Lcom/android/bluetooth/hid/HidService;->access$1600(Lcom/android/bluetooth/hid/HidService;[BLjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 264
    const-string v14, "HidService"

    const-string v15, "Error: send data native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v10    # "report":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidService;->access$1700(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 271
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 272
    .local v13, "status":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v13}, Lcom/android/bluetooth/hid/HidService;->access$1800(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 277
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "status":I
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->getIdleTimeNative([B)Z
    invoke-static {v14, v15}, Lcom/android/bluetooth/hid/HidService;->access$1900(Lcom/android/bluetooth/hid/HidService;[B)Z

    move-result v14

    if-nez v14, :cond_0

    .line 279
    const-string v14, "HidService"

    const-string v15, "Error: get idle time native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    # invokes: Lcom/android/bluetooth/hid/HidService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Lcom/android/bluetooth/hid/HidService;->access$2000(Lcom/android/bluetooth/hid/HidService;[B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 286
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 287
    .local v5, "idleTime":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    # invokes: Lcom/android/bluetooth/hid/HidService;->broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v14, v3, v5}, Lcom/android/bluetooth/hid/HidService;->access$2100(Lcom/android/bluetooth/hid/HidService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 292
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "idleTime":I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 293
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 294
    .restart local v2    # "data":Landroid/os/Bundle;
    const-string v14, "codeaurora.bluetooth.BluetoothInputDevice.extra.IDLE_TIME"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    .line 295
    .local v5, "idleTime":B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->setIdleTimeNative([BB)Z
    invoke-static {v14, v15, v5}, Lcom/android/bluetooth/hid/HidService;->access$2200(Lcom/android/bluetooth/hid/HidService;[BB)Z

    move-result v14

    if-nez v14, :cond_0

    .line 296
    const-string v14, "HidService"

    const-string v15, "Error: get idle time native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "idleTime":B
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 303
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 304
    .local v8, "priority":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/hid/HidService$1;->this$0:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v15

    # invokes: Lcom/android/bluetooth/hid/HidService;->setPriorityNative([BI)Z
    invoke-static {v14, v15, v8}, Lcom/android/bluetooth/hid/HidService;->access$2300(Lcom/android/bluetooth/hid/HidService;[BI)Z

    move-result v14

    if-nez v14, :cond_0

    .line 305
    const-string v14, "HidService"

    const-string v15, "Error: set priority native returns false"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
