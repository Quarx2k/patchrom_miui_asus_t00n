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
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
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
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    .line 72
    new-instance v0, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$1;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 115
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

.method static synthetic access$1000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method static synthetic access$602(Lcom/android/bluetooth/ble/DeviceProfileFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/bluetooth/ble/DeviceProfileFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->initAddressPreferences()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/DeviceProfileFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V

    return-void
.end method

.method private getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 299
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

.method private getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "ps":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private initAddressPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 275
    const-string v0, "DeviceProfileFragment"

    const-string v1, "init preference..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 277
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const-string v1, "device_address"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    const v1, 0x7f040090

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 288
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOrder(I)V

    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const-string v1, "rename"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    const v1, 0x7f040092

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 293
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    return-void

    .line 281
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method private updateContent()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 306
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getConnectionStateSummary()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 317
    iget-boolean v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    if-eqz v2, :cond_0

    .line 320
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

    .line 321
    .local v1, "p":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 313
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

    .line 323
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 324
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 325
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 326
    iget v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    if-ne v2, v7, :cond_4

    .line 327
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->createMiKeyPreference()V

    goto :goto_0

    .line 329
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

    .line 334
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "pkgs":[Ljava/lang/String;
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    array-length v9, v6

    if-lt v8, v9, :cond_0

    .line 353
    :goto_0
    return-void

    .line 336
    :cond_0
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v3, v6, v8

    .line 337
    .local v3, "pkg":Ljava/lang/String;
    move-object v2, v3

    .line 339
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

    .line 340
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

    .line 347
    :goto_1
    new-instance v7, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 348
    .local v7, "pref":Landroid/preference/Preference;
    const-string v8, "goto_package"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 351
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 352
    iget-object v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 341
    .end local v7    # "pref":Landroid/preference/Preference;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "pkgns":[Ljava/lang/String;
    iget v8, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v4, v5, v8

    .line 344
    .local v4, "pkgn":Ljava/lang/String;
    const v8, 0x7f0400a8

    invoke-virtual {p0, v8}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method protected createMiBandPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 372
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getMiBandKeys()Ljava/util/ArrayList;

    move-result-object v8

    .line 374
    .local v8, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v9, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v4, "miBandInCall":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f040095

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const v10, 0x7f040096

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const v10, 0x7f040097

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v5, "miBandSms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f040098

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const v10, 0x7f040099

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const v10, 0x7f04009a

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v3, "miBandAlarm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v10, 0x7f04009b

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 390
    const/4 v6, 0x0

    .line 391
    .local v6, "pc":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 392
    new-instance v6, Landroid/preference/PreferenceCategory;

    .end local v6    # "pc":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 393
    .restart local v6    # "pc":Landroid/preference/PreferenceGroup;
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 394
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
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

    .line 400
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

    .line 401
    .local v2, "key":Ljava/lang/String;
    new-instance v7, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 402
    .local v7, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {v7, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 405
    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 407
    iget v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 408
    iget-object v10, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 410
    if-eqz v1, :cond_1

    .line 411
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

    .line 399
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 397
    .end local v1    # "j":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    goto/16 :goto_1

    .line 413
    .restart local v1    # "j":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_1
    const-string v10, "device_address"

    invoke-direct {p0, v10}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto :goto_3

    .line 389
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 417
    .end local v1    # "j":I
    .end local v6    # "pc":Landroid/preference/PreferenceGroup;
    :cond_3
    return-void
.end method

.method protected createMiKeyPreference()V
    .locals 15

    .prologue
    .line 420
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v6, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v11, "mi_key_open_camera_event"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v11, "mi_key_camera_event"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    const-string v11, "mi_key_alarm_event"

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    if-nez v11, :cond_0

    .line 425
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    .line 427
    :cond_0
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v12, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 428
    .local v10, "takenDouble":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-object v12, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getRegisterAppForBleEvent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 429
    .local v9, "takenClick":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v7, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 431
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 432
    .local v4, "pm":Landroid/content/pm/PackageManager;
    move-object v3, v10

    .line 434
    .local v3, "label":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v4, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v12, "mi_key_open_camera_event"

    new-instance v13, Landroid/util/Pair;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const v11, 0x7f0400a9

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 446
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 447
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    move-object v3, v9

    .line 449
    .restart local v3    # "label":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v4, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    :goto_2
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v12, "mi_key_camera_event"

    new-instance v13, Landroid/util/Pair;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const v11, 0x7f0400a9

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_3
    const v11, 0x7f04009e

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v8, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v11, 0x7f0400a0

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const v11, 0x7f0400a1

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const v11, 0x7f0400a2

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_5

    .line 466
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 467
    .local v5, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 471
    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 472
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 473
    iget v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 474
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 475
    if-nez v2, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 476
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 478
    :cond_1
    const/4 v11, 0x1

    if-ne v2, v11, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 479
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 481
    :cond_2
    const-string v11, "device_address"

    invoke-direct {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 482
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 435
    .end local v2    # "i":I
    .end local v5    # "pref":Landroid/preference/CheckBoxPreference;
    .end local v8    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 442
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v12, "mi_key_open_camera_event"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const v11, 0x7f04009c

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 450
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v1

    .line 452
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 457
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    const-string v12, "mi_key_camera_event"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const v11, 0x7f04009d

    invoke-virtual {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 484
    .restart local v2    # "i":I
    .restart local v8    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 485
    .local v5, "pref":Landroid/preference/Preference;
    const-string v11, "mi_key_find_mi_key"

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 486
    const v11, 0x7f04009f

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 487
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 488
    iget v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 489
    iget-object v11, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 490
    const-string v11, "device_address"

    invoke-direct {p0, v11}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getKeyByDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method getConnectionStateSummary()I
    .locals 4

    .prologue
    const v1, 0x7f0400a4

    const v2, 0x7f0400a3

    const v3, 0x7f0400a6

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
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

    .line 521
    :goto_0
    return v0

    .line 499
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 507
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 502
    goto :goto_0

    .line 510
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    packed-switch v0, :pswitch_data_1

    move v0, v3

    .line 521
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 513
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 515
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 517
    goto :goto_0

    .line 519
    :pswitch_5
    const v0, 0x7f0400a5

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 510
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
    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v3, "profileKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "miBandIncallSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_incall_enabled"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v4, "alert_incall_enabled_in_contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v4, "alert_incall_enabled_no_contacts"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, "miBandSmsSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_sms_enabled"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v4, "alert_sms_enabled_in_contacts"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v4, "alert_sms_enabled_no_contacts"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "miBandAlarmSub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "alert_alarm_enabled"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-object v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v1, "com.android.bluetooth.ble.DEVICE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 124
    :cond_0
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->addPreferencesFromResource(I)V

    .line 125
    const-string v1, "profile_container"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 127
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$2;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    invoke-static {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 155
    .local v0, "bm":Landroid/bluetooth/BluetoothManager;
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mState:I

    .line 156
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

    .line 167
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mAddressPreference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleProfile;->connect()V

    .line 173
    .end local v0    # "bm":Landroid/bluetooth/BluetoothManager;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->setHasOptionsMenu(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mOrder:I

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->cache:Ljava/util/List;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mProfiles:Ljava/util/List;

    .line 178
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleProfile;->disconnect()V

    .line 192
    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 196
    iput-object v1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 198
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 199
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "device_address"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    move v2, v3

    .line 239
    :goto_1
    return v2

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 210
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rename"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v4, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 212
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mRenamePreference:Landroid/preference/EditTextPreference;

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v2, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 213
    goto :goto_1

    .line 215
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getSettingsByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "settings":Ljava/lang/String;
    move-object v0, p2

    .line 216
    check-cast v0, Ljava/lang/Boolean;

    .line 217
    .local v0, "nv":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0400aa

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiKeyTaken:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v5, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;

    invoke-direct {v5, p0, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v5, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/android/bluetooth/ble/DeviceProfileFragment$4;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Ljava/lang/String;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v2, v4

    .line 237
    goto/16 :goto_1

    .line 239
    :cond_3
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

    .line 246
    const-string v5, "mi_key_find_mi_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;

    invoke-direct {v6, p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;-><init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 271
    :goto_0
    return v4

    .line 256
    :cond_0
    const-string v5, "goto_package"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "pkgs":[Ljava/lang/String;
    iget v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    array-length v6, v2

    if-lt v5, v6, :cond_1

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 259
    :cond_1
    iget v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mDeviceType:I

    aget-object v1, v2, v5

    .line 260
    .local v1, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
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

    .line 265
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 266
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "com.xiaomi.market"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 271
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
    .line 183
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 184
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f04008f

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 185
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment;->mInited:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->updateContent()V

    .line 186
    :cond_0
    return-void
.end method
