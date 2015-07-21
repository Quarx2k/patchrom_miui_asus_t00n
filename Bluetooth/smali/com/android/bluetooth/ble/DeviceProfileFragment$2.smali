.class Lcom/android/bluetooth/ble/DeviceProfileFragment$2;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;->onCreate(Landroid/os/Bundle;)V
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
    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "DeviceProfileFragment"

    const-string v1, "error connect MiBleDeviceManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->initAddressPreferences()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$800(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$900(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    .line 149
    return-void
.end method

.method public onInit(Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 3
    .param p1, "manager"    # Lmiui/bluetooth/ble/MiBleDeviceManager;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$602(Lcom/android/bluetooth/ble/DeviceProfileFragment;Z)Z

    .line 133
    const-string v0, "DeviceProfileFragment"

    const-string v1, "init ok"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I
    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$702(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->initAddressPreferences()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$800(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$900(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    .line 142
    return-void
.end method
