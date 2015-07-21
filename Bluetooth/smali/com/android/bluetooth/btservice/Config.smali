.class public Lcom/android/bluetooth/btservice/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static final PROFILE_SERVICES:[Ljava/lang/Class;

.field private static final PROFILE_SERVICES_FLAG:[I

.field private static SUPPORTED_PROFILES:[Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "AdapterServiceConfig"

.field private static enableHfpclient:I = 0x0

.field private static final hfpClientNotSupported:I = -0x1

.field private static final hfpClientSupported:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 43
    sput v3, Lcom/android/bluetooth/btservice/Config;->enableHfpclient:I

    .line 50
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/android/bluetooth/hfp/HeadsetService;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/android/bluetooth/a2dp/A2dpService;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/bluetooth/hid/HidService;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/bluetooth/hdp/HealthService;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/bluetooth/pan/PanService;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/bluetooth/gatt/GattService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/bluetooth/map/BluetoothMapService;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/bluetooth/hfpclient/HandsfreeClientService;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/bluetooth/hid/HidDevService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    .line 64
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    .line 76
    new-array v0, v3, [Ljava/lang/Class;

    sput-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-void

    .line 64
    :array_0
    .array-data 4
        0x7f050002
        0x7f050000
        0x7f050004
        0x7f050001
        0x7f050006
        0x7f050008
        0x7f05000c
        0x7f050003
        0x7f050009
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSupportedProfiles()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    array-length v5, v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 88
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES_FLAG:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 89
    .local v3, "supported":Z
    if-eqz v3, :cond_2

    .line 90
    const-string v5, "AdapterServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HandsfreeClientService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    const-string v5, "bluetooth.hfp.client"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/bluetooth/btservice/Config;->enableHfpclient:I

    .line 94
    const-string v5, "AdapterServiceConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableHfpclient "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/bluetooth/btservice/Config;->enableHfpclient:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget v5, Lcom/android/bluetooth/btservice/Config;->enableHfpclient:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 96
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_3
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->PROFILE_SERVICES:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 102
    .end local v3    # "supported":Z
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 103
    .local v4, "totalProfiles":I
    new-array v5, v4, [Ljava/lang/Class;

    sput-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    .line 104
    sget-object v5, Lcom/android/bluetooth/btservice/Config;->SUPPORTED_PROFILES:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_0
.end method
