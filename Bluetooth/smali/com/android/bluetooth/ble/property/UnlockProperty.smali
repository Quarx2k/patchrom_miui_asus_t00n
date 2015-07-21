.class public Lcom/android/bluetooth/ble/property/UnlockProperty;
.super Lcom/android/bluetooth/ble/property/BleProperty;
.source "UnlockProperty.java"


# static fields
.field private static final AUTHORISE_KEY_PREFIX:Ljava/lang/String; = "authorise_key_"

.field private static final CHECK_INTERVAL:I = 0xc8

.field private static final DBG:Z = true

.field static final DEFAULT_RSSI_THRESHOLD:I

.field public static final IS_MIFIVE:Z

.field private static final IS_MIFOUR:Z

.field private static final LOG_FILE:Z = false

.field private static final MATCHED_BLUETOOTH_DEVICE_ADDRESS_TO_UNLOCK:Ljava/lang/String; = "bluetooth_address_to_unlock"

.field private static final MATCHED_BLUETOOTH_KEY_TO_UNLOCK:Ljava/lang/String; = "bluetooth_key_to_unlock"

.field private static final RETY_AUTH_TIMES:I = 0x5

.field private static final RSSI_THRESHOLD_KEY_PREFIX:Ljava/lang/String; = "rssi_threshold_key_"

.field public static final STATE_AUTHORISED:B = 0x1t

.field public static final STATE_LOCKED:B = 0x0t

.field public static final STATE_UNLOCKED:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "UnlockProperty"


# instance fields
.field private SDF:Ljava/text/SimpleDateFormat;

.field private mAuthenticateTask:Ljava/lang/Runnable;

.field private volatile mAuthenticateTimes:I

.field private volatile mAuthorised:Z

.field private mCheckLockTask:Ljava/lang/Runnable;

.field private mLogFile:Ljava/io/FileOutputStream;

.field private mRssiThreshold:I

.field private mStateCallback:Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

.field private mTracker:Lmiui/analytics/Analytics;

.field private volatile mUnLockState:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    sput-boolean v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->IS_MIFOUR:Z

    .line 43
    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    sput-boolean v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->IS_MIFIVE:Z

    .line 45
    sget-boolean v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->IS_MIFOUR:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->IS_MIFIVE:Z

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, -0x50

    :goto_0
    sput v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->DEFAULT_RSSI_THRESHOLD:I

    return-void

    :cond_1
    const/16 v0, -0x46

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/bluetooth/ble/GattPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/BleProperty;-><init>(Lcom/android/bluetooth/ble/GattPeripheral;)V

    .line 60
    sget v0, Lcom/android/bluetooth/ble/property/UnlockProperty;->DEFAULT_RSSI_THRESHOLD:I

    iput v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mRssiThreshold:I

    .line 61
    iput-boolean v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    .line 62
    iput-byte v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    .line 63
    iput v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->SDF:Ljava/text/SimpleDateFormat;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    .line 71
    new-instance v0, Lcom/android/bluetooth/ble/property/UnlockProperty$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/UnlockProperty$1;-><init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mStateCallback:Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    .line 110
    new-instance v0, Lcom/android/bluetooth/ble/property/UnlockProperty$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/UnlockProperty$2;-><init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTask:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/bluetooth/ble/property/UnlockProperty$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/property/UnlockProperty$3;-><init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mCheckLockTask:Ljava/lang/Runnable;

    .line 152
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPropertyId:I

    .line 155
    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->getRssiThreshold(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mRssiThreshold:I

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mStateCallback:Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->registerConnectSateListener(Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;)V

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mCheckLockTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/ble/property/UnlockProperty;)Lmiui/analytics/Analytics;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/ble/property/UnlockProperty;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/ble/property/UnlockProperty;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/bluetooth/ble/property/UnlockProperty;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/ble/property/UnlockProperty;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthenticateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/ble/property/UnlockProperty;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/ble/property/UnlockProperty;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    iget-byte v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    return v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/ble/property/UnlockProperty;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;
    .param p1, "x1"    # B

    .prologue
    .line 35
    iput-byte p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/ble/property/UnlockProperty;B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;
    .param p1, "x1"    # B

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->notifyUnlockState(B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/ble/GattPeripheral;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->authenticate(Lcom/android/bluetooth/ble/GattPeripheral;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/ble/property/UnlockProperty;Z)B
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->requestUnlockState(Z)B

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/ble/property/UnlockProperty;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/ble/property/UnlockProperty;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->checkUnlockState()V

    return-void
.end method

.method private static authenticate(Lcom/android/bluetooth/ble/GattPeripheral;)Z
    .locals 15
    .param p0, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;

    .prologue
    const/4 v5, 0x0

    const/16 v14, 0x10

    .line 325
    const-string v11, "UnlockProperty"

    const-string v12, "authenticate()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-nez p0, :cond_0

    .line 407
    :goto_0
    return v5

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/bluetooth/ble/property/UnlockProperty;->getDeviceKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "savedKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 332
    .local v2, "key":[B
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 333
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 338
    :goto_1
    if-eqz v2, :cond_1

    array-length v11, v2

    if-eq v11, v14, :cond_3

    .line 339
    :cond_1
    const-string v11, "UnlockProperty"

    const-string v12, "get key error!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/bluetooth/ble/property/UnlockProperty;->getOldSavedKey(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1

    .line 348
    :cond_3
    const/16 v11, 0x14

    new-array v3, v11, [B

    .line 349
    .local v3, "plaintext":[B
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    invoke-virtual {v11, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 350
    const/4 v10, -0x1

    .line 351
    .local v10, "tmp82_81":B
    const/16 v11, 0x13

    aput-byte v10, v3, v11

    .line 352
    const/16 v11, 0x12

    aput-byte v10, v3, v11

    .line 353
    const/16 v11, 0x11

    aput-byte v10, v3, v11

    .line 354
    aput-byte v10, v3, v14

    .line 355
    const/4 v4, 0x0

    .line 356
    .local v4, "result":[B
    const/4 v9, 0x0

    .line 357
    .local v9, "success":Z
    sget-object v11, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v12, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

    invoke-virtual {p0, v11, v12, v3}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v9

    .line 359
    if-nez v9, :cond_4

    .line 360
    const-string v11, "UnlockProperty"

    const-string v12, "write plain text failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_4
    sget-object v11, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v12, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_READ:Ljava/util/UUID;

    invoke-virtual {p0, v11, v12}, Lcom/android/bluetooth/ble/GattPeripheral;->read(Ljava/util/UUID;Ljava/util/UUID;)[B

    move-result-object v4

    .line 367
    if-eqz v4, :cond_5

    array-length v11, v4

    if-ge v11, v14, :cond_6

    .line 368
    :cond_5
    const-string v11, "UnlockProperty"

    const-string v12, "encrypt data failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_6
    new-array v6, v14, [B

    .line 373
    .local v6, "reversedKey":[B
    new-array v7, v14, [B

    .line 374
    .local v7, "reversedPlaintext":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v14, :cond_7

    .line 375
    rsub-int/lit8 v11, v1, 0xf

    aget-byte v11, v2, v11

    aput-byte v11, v6, v1

    .line 376
    rsub-int/lit8 v11, v1, 0xf

    aget-byte v11, v3, v11

    aput-byte v11, v7, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 378
    :cond_7
    invoke-static {v6, v7}, Lcom/android/bluetooth/ble/Utils;->AESEncrypt([B[B)[B

    move-result-object v0

    .line 380
    .local v0, "encrypted":[B
    const/4 v5, 0x1

    .line 381
    .local v5, "ret":Z
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v14, :cond_8

    .line 382
    aget-byte v11, v4, v1

    rsub-int/lit8 v12, v1, 0xf

    aget-byte v12, v0, v12

    if-eq v11, v12, :cond_9

    .line 383
    const/4 v5, 0x0

    .line 387
    :cond_8
    if-eqz v5, :cond_a

    .line 389
    const-string v11, "UnlockProperty"

    const-string v12, "[AES] AUTHENTICATION SUCCESS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 381
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 393
    :cond_a
    const/4 v5, 0x1

    .line 395
    const-string v11, "UnlockProperty"

    const-string v12, "[AES] AUTHENTICATION FAILED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v14, :cond_c

    .line 399
    aget-byte v11, v4, v1

    aget-byte v12, v2, v1

    aget-byte v13, v3, v1

    xor-int/2addr v12, v13

    if-eq v11, v12, :cond_b

    .line 400
    const/4 v5, 0x0

    .line 398
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 404
    :cond_c
    const-string v11, "UnlockProperty"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[XOR] AUTHENTICATION SUCCESS="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static authorize(Lcom/android/bluetooth/ble/GattPeripheral;[B)Z
    .locals 5
    .param p0, "peripheral"    # Lcom/android/bluetooth/ble/GattPeripheral;
    .param p1, "data"    # [B

    .prologue
    .line 288
    const-string v3, "UnlockProperty"

    const-string v4, "authorize()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 290
    :cond_0
    const/4 v2, 0x0

    .line 305
    :cond_1
    :goto_0
    return v2

    .line 296
    :cond_2
    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 297
    .local v0, "fixKey":[B
    sget-object v3, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_AUTHORISE_SERVICE:Ljava/util/UUID;

    sget-object v4, Lcom/android/bluetooth/ble/property/MiliConstants;->UUID_CHARACTERISTIC_AUTHORISE_WRITE:Ljava/util/UUID;

    invoke-virtual {p0, v3, v4, v0}, Lcom/android/bluetooth/ble/GattPeripheral;->write(Ljava/util/UUID;Ljava/util/UUID;[B)Z

    move-result v2

    .line 300
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorise_key_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "prefKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private checkUnlockState()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-static {v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->authenticate(Lcom/android/bluetooth/ble/GattPeripheral;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    .line 194
    iget-boolean v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->requestUnlockState(Z)B

    move-result v0

    iput-byte v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    .line 197
    const-string v0, "UnlockProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unlock state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-byte v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    invoke-direct {p0, v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->notifyUnlockState(B)V

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    const-string v1, "authorised"

    iget-boolean v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    invoke-virtual {v0}, Lmiui/analytics/Analytics;->endSession()V

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDeviceKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorise_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "prefKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getOldSavedKey(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "key":[B
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_address_to_unlock"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "oldDevice":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_key_to_unlock"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "oldKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 317
    .local v0, "data":[B
    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 320
    .end local v0    # "data":[B
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static getRssiThreshold(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rssi_threshold_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "prefKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/ble/property/UnlockProperty;->DEFAULT_RSSI_THRESHOLD:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private logToFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mLogFile:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mLogFile:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyUnlockState(B)V
    .locals 3
    .param p1, "statue"    # B

    .prologue
    .line 105
    const-string v0, "UnlockProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUnlockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->notifyData([B)V

    .line 108
    return-void
.end method

.method private requestUnlockState(Z)B
    .locals 2
    .param p1, "auth"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->readRemoteRSSI()I

    move-result v0

    .line 182
    .local v0, "rssi":I
    iget v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mRssiThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x2

    .line 184
    .end local v0    # "rssi":I
    :goto_0
    return v1

    .line 182
    .restart local v0    # "rssi":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "rssi":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setRssiThreshold(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "rssi"    # I

    .prologue
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rssi_threshold_key_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "prefKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mStateCallback:Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->unregisterConnectSateListener(Lcom/android/bluetooth/ble/IGattCallback$IConnectionStateChangeCallback;)V

    .line 427
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 428
    return-void
.end method

.method public getProperty()[B
    .locals 3

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mAuthorised:Z

    invoke-direct {p0, v1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->requestUnlockState(Z)B

    move-result v0

    .line 233
    .local v0, "state":B
    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method protected onAddCallback(Landroid/os/ParcelUuid;Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;Z)V
    .locals 5
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;
    .param p3, "isFirst"    # Z

    .prologue
    .line 249
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-byte v4, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    aput-byte v4, v2, v3

    invoke-interface {p2, p1, v1, v2}, Lmiui/bluetooth/ble/IBluetoothMiBlePropertyCallback;->notifyProperty(Landroid/os/ParcelUuid;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    if-eqz p3, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mCheckLockTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    .line 256
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mCheckLockTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/ble/GattPeripheral;->postDelayed(Ljava/lang/Runnable;J)V

    .line 259
    :cond_0
    monitor-enter p0

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    iget-object v2, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 261
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    const-string v2, "unlock_state"

    iget-byte v3, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mUnLockState:B

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    .line 263
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mTracker:Lmiui/analytics/Analytics;

    invoke-virtual {v1}, Lmiui/analytics/Analytics;->endSession()V

    .line 264
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected onRemoveCallback(Landroid/os/ParcelUuid;Z)V
    .locals 2
    .param p1, "clientId"    # Landroid/os/ParcelUuid;
    .param p2, "isLast"    # Z

    .prologue
    .line 275
    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mCheckLockTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->removeTask(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public postInvalide()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    new-instance v1, Lcom/android/bluetooth/ble/property/UnlockProperty$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/ble/property/UnlockProperty$4;-><init>(Lcom/android/bluetooth/ble/property/UnlockProperty;)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/ble/GattPeripheral;->post(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public setProperty([B)Z
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->checkPermission()V

    .line 223
    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-static {v1, p1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->authorize(Lcom/android/bluetooth/ble/GattPeripheral;[B)Z

    move-result v0

    .line 224
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/property/UnlockProperty;->postInvalide()V

    .line 227
    :cond_0
    return v0
.end method

.method public setRssiThreshold(I)Z
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mRssiThreshold:I

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v0}, Lcom/android/bluetooth/ble/GattPeripheral;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/ble/property/UnlockProperty;->mPeripheral:Lcom/android/bluetooth/ble/GattPeripheral;

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/GattPeripheral;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/bluetooth/ble/property/UnlockProperty;->setRssiThreshold(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
