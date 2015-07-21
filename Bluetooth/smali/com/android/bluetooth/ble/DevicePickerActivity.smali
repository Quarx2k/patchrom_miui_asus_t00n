.class public final Lcom/android/bluetooth/ble/DevicePickerActivity;
.super Lmiui/app/Activity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public gotoDeviceProfile(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 54
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v1, 0x7f070022

    invoke-static {p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/ble/DeviceProfileFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 56
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f070022

    .line 27
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_0

    .line 28
    sget v3, Lmiui/R$style;->Theme_Light_Dialog:I

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/DevicePickerActivity;->setTheme(I)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_3

    .line 32
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/DevicePickerActivity;->setContentView(I)V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 37
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 38
    const v3, 0x7f040087

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/DevicePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 42
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DevicePickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 43
    .local v1, "ft":Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_4

    const-string v3, "com.android.bluetooth.ble.DeviceProfileFragment"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    const-string v3, "com.android.bluetooth.ble.device"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/ble/DeviceProfileFragment;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 50
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    return-void

    .line 34
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/DevicePickerActivity;->setContentView(I)V

    goto :goto_0

    .line 46
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Lcom/android/bluetooth/ble/DevicePickerFragment;

    invoke-direct {v3}, Lcom/android/bluetooth/ble/DevicePickerFragment;-><init>()V

    invoke-virtual {v1, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method
