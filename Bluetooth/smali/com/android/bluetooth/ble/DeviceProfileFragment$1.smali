.class Lcom/android/bluetooth/ble/DeviceProfileFragment$1;
.super Landroid/os/Handler;
.source "DeviceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 76
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 108
    return-void

    .line 78
    :pswitch_0
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    new-instance v5, Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v6}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;

    invoke-direct {v8, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$1$1;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment$1;)V

    invoke-direct {v5, v6, v7, v8}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v4, v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$002(Lcom/android/bluetooth/ble/DeviceProfileFragment;Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/MiBleProfile;

    .line 88
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 89
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/bluetooth/ble/MiBleDeviceManager;->bindDevice(Ljava/lang/String;)Z

    .line 90
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$500(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 91
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "key":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "pk":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v9

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 99
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pk":[Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/bluetooth/ble/MiBleDeviceManager;->unbindDevice(Ljava/lang/String;)Z

    .line 100
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/bluetooth/ble/MiBleProfile;->disconnect()V

    .line 101
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I
    invoke-static {v4, v9}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$202(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I

    .line 102
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getConnectionStateSummary()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
