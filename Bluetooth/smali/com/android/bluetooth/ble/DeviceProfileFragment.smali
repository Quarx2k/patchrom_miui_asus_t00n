.class public Lcom/android/bluetooth/ble/DeviceProfileFragment;
.super Landroid/preference/PreferenceFragment;
.source "DeviceProfileFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final EXTRA_DEVICE:Ljava/lang/String; = "com.android.bluetooth.ble.DEVICE"

.field private static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final KEY_GOTO_PACKAGE:Ljava/lang/String; = "goto_package"

.field private static final KEY_MI_KEY_FIND_MI_KEY:Ljava/lang/String; = "mi_key_find_mi_key"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_RENAME:Ljava/lang/String; = "rename"

.field private static final MSG_DEVICE_CLOSE:I = 0x65

.field private static final MSG_DEVICE_OPEN:I = 0x64

.field public static final TAG:Ljava/lang/String; = "DeviceProfileFragment"


# instance fields
.field private cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressPreference:Landroid/preference/Preference;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceType:I

.field private mHandler:Landroid/os/Handler;

.field private mInited:Z

.field private mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

.field private mMiKeyTaken:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrder:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRenamePreference:Landroid/preference/EditTextPreference;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    .line 72
    new-instance v0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/ble/DeviceProfileFragment;Lmiui/bluetooth/ble/MiBleProfile;)Lmiui/bluetooth/ble/MiBleProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # Lmiui/bluetooth/ble/MiBleProfile;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/ble/DeviceProfileFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->initAddressPreferences()V

    return-void
.end method

.method private getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pn"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 539
    .local v3, "pm":Landroid/content/pm/PackageManager;
    move-object v2, p1

    .line 541
    .local v2, "label":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-object v2

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "ps":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private initAddressPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    const-string v0, "DeviceProfileFragment"

    const-string v1, "init preference..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 290
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const-string v1, "device_address"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const v1, 0x7f040090

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 301
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOrder(I)V

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const-string v1, "rename"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const v1, 0x7f040092

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 306
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    return-void

    .line 294
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .locals 3
    .param p0, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 112
    new-instance v1, Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-direct {v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;-><init>()V

    .line 113
    .local v1, "dpf":Lcom/android/bluetooth/ble/DeviceProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.android.bluetooth.ble.DEVICE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method private updateContent()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 319
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 324
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getConnectionStateSummary()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 330
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 334
    .local v1, "p":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const-string v3, "%s    %s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 336
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 337
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 338
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 339
    iget v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    if-ne v2, v7, :cond_4

    .line 340
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->createMiKeyPreference()V

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->createGotoPreference()V

    goto :goto_0
.end method


# virtual methods
.method protected createGotoPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "pkgs":[Ljava/lang/String;
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    array-length v9, v6

    if-lt v8, v9, :cond_0

    .line 366
    :goto_0
    return-void

    .line 349
    :cond_0
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v3, v6, v8

    .line 350
    .local v3, "pkg":Ljava/lang/String;
    move-object v2, v3

    .line 352
    .local v2, "label":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 353
    const v8, 0x7f0400a7

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 360
    :goto_1
    new-instance v7, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 361
    .local v7, "pref":Landroid/preference/Preference;
    const-string v8, "goto_package"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 364
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 365
    iget-object v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 354
    .end local v7    # "pref":Landroid/preference/Preference;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "pkgns":[Ljava/lang/String;
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v4, v5, v8

    .line 357
    .local v4, "pkgn":Ljava/lang/String;
    const v8, 0x7f0400a8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected createMiBandPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 385
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getMiBandKeys()Ljava/util/ArrayList;

    move-result-object v8

    .line 387
    .local v8, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v9, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v4, "miBandInCall":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f040095

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const v10, 0x7f040096

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const v10, 0x7f040097

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v5, "miBandSms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f040098

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    const v10, 0x7f040099

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const v10, 0x7f04009a

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v3, "miBandAlarm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f04009b

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 403
    const/4 v6, 0x0

    .line 404
    .local v6, "pc":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 405
    new-instance v6, Landroid/preference/PreferenceCategory;

    .end local v6    # "pc":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 406
    .restart local v6    # "pc":Landroid/preference/PreferenceGroup;
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 408
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "key":Ljava/lang/String;
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 415
    .local v7, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v7, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 418
    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 420
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 421
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 412
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 410
    .end local v1    # "j":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    goto/16 :goto_1

    .line 426
    .restart local v1    # "j":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v10, "device_address"

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto :goto_3

    .line 402
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 430
    .end local v1    # "j":I
    .end local v6    # "pc":Landroid/preference/PreferenceGroup;
    :cond_3
    return-void
.end method

.method protected createMiKeyPreference()V
    .locals 15

    .prologue
    .line 433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v3, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "%d@mikey"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    const-string v10, "%d@mikey"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    const-string v10, "%d@mikey"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    if-nez v10, :cond_0

    .line 438
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "selfPackage":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, "takenDouble":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "takenClick":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v10, v11, v12}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, "takenLong":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v4, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 446
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "label":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const v10, 0x7f0400a9

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    .end local v1    # "label":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .restart local v1    # "label":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const v10, 0x7f0400a9

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v1    # "label":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 462
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPackageLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .restart local v1    # "label":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const v10, 0x7f0400a9

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v1    # "label":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v6, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f0400a0

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const v10, 0x7f0400a1

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const v10, 0x7f0400a2

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_7

    .line 474
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 475
    .local v2, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 478
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 479
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 481
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 482
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 483
    if-nez v0, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 484
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    :cond_1
    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 487
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    :cond_2
    const/4 v10, 0x2

    if-ne v0, v10, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 490
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 492
    :cond_3
    const-string v10, "device_address"

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 493
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 450
    .end local v0    # "i":I
    .end local v2    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v6    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const v10, 0x7f04009c

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 458
    :cond_5
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const v10, 0x7f04009d

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 466
    :cond_6
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const v10, 0x7f04009e

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 495
    .restart local v0    # "i":I
    .restart local v6    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 496
    .local v2, "pref":Landroid/preference/Preference;
    const-string v10, "mi_key_find_mi_key"

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 497
    const v10, 0x7f04009f

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 498
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 499
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 500
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 501
    const-string v10, "device_address"

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method getConnectionStateSummary()I
    .locals 4

    .prologue
    const v1, 0x7f0400a4

    const v2, 0x7f0400a3

    const v3, 0x7f0400a6

    .line 505
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    const-string v0, "DeviceProfileFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device disabled..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 532
    :goto_0
    return v0

    .line 510
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 518
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 513
    goto :goto_0

    .line 521
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    packed-switch v0, :pswitch_data_1

    move v0, v3

    .line 532
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 524
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 526
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 528
    goto :goto_0

    .line 530
    :pswitch_5
    const v0, 0x7f0400a5

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 521
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected getMiBandKeys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v1, "miBandIncallSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_incall_enabled"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v4, "alert_incall_enabled_in_contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v4, "alert_incall_enabled_no_contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, "miBandSmsSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_sms_enabled"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v4, "alert_sms_enabled_in_contacts"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v4, "alert_sms_enabled_no_contacts"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "miBandAlarmSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_alarm_enabled"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-object v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.bluetooth.ble.DEVICE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 131
    :cond_0
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->addPreferencesFromResource(I)V

    .line 132
    const-string v1, "profile_container"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 134
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    invoke-static {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 159
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 162
    .local v0, "bm":Landroid/bluetooth/BluetoothManager;
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    .line 163
    new-instance v1, Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/bluetooth/ble/DeviceProfileFragment$3;

    invoke-direct {v4, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$3;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 180
    .end local v0    # "bm":Landroid/bluetooth/BluetoothManager;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->setHasOptionsMenu(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    .line 185
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleProfile;->disconnect()V

    .line 199
    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 203
    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 205
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 206
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 210
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "device_address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    move v2, v3

    .line 251
    :goto_1
    return v2

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 217
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rename"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 219
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 220
    goto :goto_1

    .line 222
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "settings":Ljava/lang/String;
    move-object v0, p2

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    .line 224
    .local v0, "nv":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0400aa

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;

    invoke-direct {v5, p0, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 244
    :cond_3
    iget v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 245
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/bluetooth/ble/MiBleDeviceManager;->registerAppForBleEvent(Ljava/lang/String;I)Z

    move-result v2

    goto/16 :goto_1

    .line 248
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/bluetooth/ble/MiBleDeviceManager;->unregisterAppForBleEvent(Ljava/lang/String;I)Z

    move-result v2

    goto/16 :goto_1

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lmiui/bluetooth/ble/MiBleDeviceManager;->setSettings(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 259
    const-string v5, "mi_key_find_mi_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;

    invoke-direct {v6, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 284
    :goto_0
    return v4

    .line 269
    :cond_0
    const-string v5, "goto_package"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "pkgs":[Ljava/lang/String;
    iget v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    array-length v6, v2

    if-lt v5, v6, :cond_1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 272
    :cond_1
    iget v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v1, v2, v5

    .line 273
    .local v1, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://search?q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 278
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "com.xiaomi.market"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 191
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f04008f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 192
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V

    .line 193
    :cond_0
    return-void
.end method
