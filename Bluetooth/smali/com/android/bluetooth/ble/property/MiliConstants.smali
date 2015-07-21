.class public Lcom/android/bluetooth/ble/property/MiliConstants;
.super Ljava/lang/Object;
.source "MiliConstants.java"


# static fields
.field private static final DEVICE_ADDRESS_MASK:J = 0xffffff800000L

.field private static final MILI_ADDRESS_PATTERN:J = 0x880f10000000L

.field private static final MILI_ADDRESS_PREFIX:Ljava/lang/String; = "88:0F:10:"

.field public static final UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_EVENT:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

.field public static final UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "fee1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    .line 23
    const-string v0, "fed0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

    .line 24
    const-string v0, "fed1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

    .line 25
    const-string v0, "fed2"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

    .line 26
    const-string v0, "fedd"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

    .line 27
    const-string v0, "fede"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

    .line 30
    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

    .line 31
    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

    .line 34
    const-string v0, "fee0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    .line 35
    const-string v0, "ff01"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    .line 36
    const-string v0, "ff04"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

    .line 37
    const-string v0, "ff05"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    .line 38
    const-string v0, "ff06"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

    .line 39
    const-string v0, "ff07"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    .line 40
    const-string v0, "ff10"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_EVENT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiliDevice(Ljava/lang/String;)Z
    .locals 1
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "88:0F:10:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
