.class Lcom/android/bluetooth/ble/DeviceProfileFragment$4;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$settings:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    iput-object p2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$settings:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 229
    new-instance v0, Lcom/android/bluetooth/ble/app/BleSettings;

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/ble/app/BleSettings;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "bs":Lcom/android/bluetooth/ble/app/BleSettings;
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$1000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$settings:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/bluetooth/ble/app/BleSettings;->getBleEventSettingKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->deleteSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$1100(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->val$preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # invokes: Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V
    invoke-static {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$900(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    .line 234
    return-void
.end method
