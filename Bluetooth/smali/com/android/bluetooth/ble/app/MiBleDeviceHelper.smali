.class public Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;
.super Ljava/lang/Object;
.source "MiBleDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "scaned_dev.xml"

.field private static final NS:Ljava/lang/String;

.field private static final TAG_ADDR:Ljava/lang/String; = "addr"

.field private static final TAG_ADV:Ljava/lang/String; = "adv"

.field private static final TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_DEVICES:Ljava/lang/String; = "devices"

.field private static final TAG_RSSI:Ljava/lang/String; = "rssi"

.field private static sHasLoaded:Z

.field private static sHasNew:Z

.field private static sScanedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    .line 44
    sput-boolean v1, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasNew:Z

    .line 45
    sput-boolean v1, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasLoaded:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sScanedDevices:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$000([B)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 18
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->parseUuids([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static loadFromConfig(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-boolean v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasLoaded:Z

    if-eqz v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    const-string v2, "scaned_dev.xml"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 57
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->parseConfig(Ljava/io/InputStream;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasLoaded:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 60
    .end local v1    # "in":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseConfig(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 97
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 98
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 100
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->readAdvData(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseUuids([B)Ljava/util/List;
    .locals 13
    .param p0, "adv_data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v7, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v8, v12, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 228
    .local v1, "length":B
    if-nez v1, :cond_2

    .line 258
    .end local v1    # "length":B
    :cond_1
    return-object v7

    .line 231
    .restart local v1    # "length":B
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 232
    .local v6, "type":B
    packed-switch v6, :pswitch_data_0

    .line 253
    :pswitch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 235
    :goto_1
    :pswitch_1
    if-lt v1, v12, :cond_0

    .line 236
    const-string v8, "%08x-0000-1000-8000-00805f9b34fb"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v8, v1, -0x2

    int-to-byte v1, v8

    goto :goto_1

    .line 244
    :goto_2
    :pswitch_2
    const/16 v8, 0x10

    if-lt v1, v8, :cond_0

    .line 245
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 246
    .local v2, "lsb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 247
    .local v4, "msb":J
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v8, v1, -0x10

    int-to-byte v1, v8

    .line 249
    goto :goto_2

    .line 232
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static putScanResult(Ljava/lang/String;I[B)V
    .locals 2
    .param p0, "device"    # Ljava/lang/String;
    .param p1, "rssi"    # I
    .param p2, "advData"    # [B

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasNew:Z

    .line 90
    sget-object v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sScanedDevices:Ljava/util/HashMap;

    new-instance v1, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method private static readAdvData(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 112
    sget-object v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v3, "devices"

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 114
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 118
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "name":Ljava/lang/String;
    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->readDevice(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;

    move-result-object v0

    .line 121
    .local v0, "dev":Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->address:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 122
    sget-object v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sScanedDevices:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->address:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    .end local v0    # "dev":Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    :cond_1
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 128
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static readDevice(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 132
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "device"

    invoke-interface {p0, v7, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "address":Ljava/lang/String;
    const/4 v3, 0x0

    .line 135
    .local v3, "rssi":I
    const/4 v1, 0x0

    .line 136
    .local v1, "adv_data":[B
    const/4 v4, 0x0

    .line 138
    .local v4, "text":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 139
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 142
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "name":Ljava/lang/String;
    const-string v5, "addr"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    const-string v5, "addr"

    invoke-static {p0, v5}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->readTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    const-string v5, "rssi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    const-string v5, "rssi"

    invoke-static {p0, v5}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->readTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 148
    :cond_2
    const-string v5, "adv"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    const-string v5, "adv"

    invoke-static {p0, v5}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->readTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_3
    invoke-static {p0}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 156
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;

    invoke-direct {v5, v0, v3, v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;-><init>(Ljava/lang/String;I[B)V

    return-object v5
.end method

.method private static readTextValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v1, 0x2

    sget-object v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, ""

    .line 162
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 163
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 166
    :cond_0
    const/4 v1, 0x3

    sget-object v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method static saveToConfig(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-boolean v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasNew:Z

    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    const-string v2, "scaned_dev.xml"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 75
    const-string v2, "scaned_dev.xml"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 76
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {v1}, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->writeToXML(Ljava/io/OutputStream;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 78
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sHasNew:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 79
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 175
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 179
    goto :goto_0

    .line 185
    :cond_1
    return-void

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeToXML(Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 188
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 190
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 191
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 192
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "devices"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->sScanedDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 194
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;

    .line 195
    .local v0, "device":Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "device"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "addr"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    iget-object v5, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->address:Ljava/lang/String;

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "addr"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "rssi"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    iget v5, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->rssi:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "rssi"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "adv"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    iget-object v5, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->adv_data:[B

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, v0, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;->adv_data:[B

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_0
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "adv"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "device"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "device":Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;
    .end local v1    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 215
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/bluetooth/ble/app/MiBleDeviceHelper$ScanedDevice;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/bluetooth/ble/app/MiBleDeviceHelper;->NS:Ljava/lang/String;

    const-string v6, "devices"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    return-void
.end method
