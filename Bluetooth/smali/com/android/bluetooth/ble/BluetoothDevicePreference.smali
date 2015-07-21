.class public Lcom/android/bluetooth/ble/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"


# instance fields
.field public mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private sDimAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/high16 v2, -0x80000000

    .line 30
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    iput v2, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->sDimAlpha:I

    .line 31
    iget v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->sDimAlpha:I

    if-ne v1, v2, :cond_0

    .line 32
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 33
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 35
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->sDimAlpha:I

    .line 37
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    const-string v1, "bluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 40
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 41
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "deviceAddress":Ljava/lang/String;
    const-string v1, "88:0F:10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const v1, 0x7f020008

    .line 76
    .end local v0    # "deviceAddress":Ljava/lang/String;
    :goto_0
    return v1

    .line 70
    .restart local v0    # "deviceAddress":Ljava/lang/String;
    :cond_0
    const v1, 0x7f020009

    goto :goto_0

    .line 73
    .end local v0    # "deviceAddress":Ljava/lang/String;
    :cond_1
    const-string v1, "DevicePickerFragment"

    const-string v2, "mBluetoothDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/bluetooth/ble/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    iget-object v2, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    const v1, 0x80b0041

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 102
    const v1, 0x8020232

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 106
    return-void

    .line 100
    .restart local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 6

    .prologue
    .line 44
    iget-object v3, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "address":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v1

    .line 57
    .local v1, "iconResId":I
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setIcon(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 62
    return-void

    .line 53
    .end local v1    # "iconResId":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/ble/BluetoothDevicePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 110
    return-void
.end method
