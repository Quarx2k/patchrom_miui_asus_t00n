.class public Lcom/android/bluetooth/ble/property/MiliConstants;
.super Ljava/lang/Object;
.source "MiliConstants.java"


# static fields
.field private static final DEVICE_ADDRESS_MASK:J = 0xffffff800000L

.field private static final MILI_ADDRESS_PATTERN:J = 0x880f10000000L

.field public static final UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

.field public static final UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

.field public static final UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

.field public static final UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "fee1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    .line 21
    const-string v0, "fed0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_KEY:Ljava/util/UUID;

    .line 22
    const-string v0, "fed1"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_PLAIN:Ljava/util/UUID;

    .line 23
    const-string v0, "fed2"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ENCRYPT_READ:Ljava/util/UUID;

    .line 24
    const-string v0, "fedd"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

    .line 25
    const-string v0, "fede"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

    .line 28
    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_SERVICE_IMMEDIATE_ALERT:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_SERVICE:Ljava/util/UUID;

    .line 29
    sget-object v0, Lcom/android/bluetooth/ble/BleConstants;->UUID_CHARACTERISTIC_ALERT_LEVEL:Ljava/util/UUID;

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_IMMEDIATE_ALERT_LEVEL:Ljava/util/UUID;

    .line 32
    const-string v0, "fee0"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_SERVICE_MILI_SERVICE:Ljava/util/UUID;

    .line 33
    const-string v0, "ff01"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_DEVICE_INFO:Ljava/util/UUID;

    .line 34
    const-string v0, "ff04"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_USER_INFO:Ljava/util/UUID;

    .line 35
    const-string v0, "ff05"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_CONTROL_POINT:Ljava/util/UUID;

    .line 36
    const-string v0, "ff06"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_SPROT_STEPS:Ljava/util/UUID;

    .line 37
    const-string v0, "ff07"

    invoke-static {v0}, Lcom/android/bluetooth/ble/BleConstants;->UUID16(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_ACTIVITY_DATA:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiliDevice(Ljava/lang/String;)Z
    .locals 4
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/bluetooth/ble/Utils;->adressToLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v2, 0xffffff800000L

    and-long/2addr v0, v2

    const-wide v2, 0x880f10000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
