.class Lcom/android/bluetooth/ble/DevicePickerFragment$3;
.super Ljava/lang/Object;
.source "DevicePickerFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/DevicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DevicePickerFragment;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 208
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 209
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 212
    :cond_0
    neg-int v2, p2

    .line 213
    .local v2, "key":I
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 214
    .local v5, "nindex":I
    if-gez v5, :cond_2

    .line 215
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-virtual {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 236
    .local v0, "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setOrder(I)V

    .line 238
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$800(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/preference/PreferenceGroup;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 239
    return-void

    .line 217
    .end local v0    # "btPreference":Lcom/android/bluetooth/ble/BluetoothDevicePreference;
    :cond_2
    add-int/lit8 v3, v5, 0x1

    .line 218
    .local v3, "nextindex":I
    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 219
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 220
    .local v4, "nextkey":I
    add-int/lit8 v2, v2, 0x1

    .line 221
    if-ge v2, v4, :cond_4

    .line 222
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    .end local v4    # "nextkey":I
    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 230
    iget-object v6, p0, Lcom/android/bluetooth/ble/DevicePickerFragment$3;->this$0:Lcom/android/bluetooth/ble/DevicePickerFragment;

    # getter for: Lcom/android/bluetooth/ble/DevicePickerFragment;->mAvailableDevicesList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/bluetooth/ble/DevicePickerFragment;->access$900(Lcom/android/bluetooth/ble/DevicePickerFragment;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 225
    .restart local v4    # "nextkey":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 226
    move v2, v4

    .line 227
    goto :goto_1
.end method
