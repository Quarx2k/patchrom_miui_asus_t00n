.class public Lcom/android/bluetooth/ble/app/BleSettings;
.super Ljava/lang/Object;
.source "BleSettings.java"


# static fields
.field private static final DBG:Z = true

.field private static final DECIVE_SELECTIONS:Ljava/lang/String; = "device = ?"

.field private static final DECIVE_SETTINGS_SELECTIONS:Ljava/lang/String; = "device = ? AND setting = ?"

.field private static final SELECTION_SETTED_VALUE:Ljava/lang/String; = "value NOT NULL AND value != 0 AND value != \'\' "

.field private static final SELECT_ALL_DECIVE_SQL:Ljava/lang/String; = "SELECT DISTINCT device FROM settings"

.field private static final SELECT_DECIVE_BY_SETTINGS_SELECTIONS:Ljava/lang/String; = "setting = ? AND value = ?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/bluetooth/ble/app/BleSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    iget-object v1, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    .line 32
    return-void
.end method

.method public static getBleEventSettingKey(I)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # I

    .prologue
    .line 211
    const-string v0, "miui_ble_event_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectDevices(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "selections"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 148
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "device"

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, p2, v5}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    const-string v3, "device"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "deviceIndex":I
    if-ltz v1, :cond_0

    .line 155
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 162
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public deleteSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    sget-object v4, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSettings() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v4, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    const-string v5, "device = ? AND setting = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v3

    aput-object p2, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 207
    .local v0, "deleteRows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public deleteSettings(Ljava/lang/String;)Z
    .locals 7
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    sget-object v4, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSettings() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v4, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    const-string v5, "device = ?"

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 195
    .local v0, "deleteRows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public findDevices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    sget-object v0, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v1, "find devices: setting = %s, value = %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "setting = ? AND value = ?"

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->selectDevices(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v1, "getAllDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, v2, v2}, Lcom/android/bluetooth/ble/app/BleSettings;->selectDevices(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v1, "getAllSettedDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "value NOT NULL AND value != 0 AND value != \'\' "

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/ble/app/BleSettings;->selectDevices(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 168
    sget-object v2, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceSettings() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "setting"

    aput-object v4, v3, v7

    const-string v4, "value"

    aput-object v4, v3, v8

    const-string v4, "device = ?"

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 184
    return-object v1
.end method

.method public getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_0
    sget-object v2, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v3, "setSettings() device and setting must not empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-object v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "value"

    aput-object v4, v3, v6

    const-string v4, "device = ? AND setting = ?"

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const/4 v1, 0x0

    .line 80
    .local v1, "value":Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    sget-object v2, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v3, "get setting: device = %s, setting = %s, value = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public getSettingBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/ble/app/BleSettings;->getSettingInteger(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getSettingInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/ble/app/BleSettings;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 103
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .line 99
    .restart local p3    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 91
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/ble/app/BleSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    :cond_0
    sget-object v3, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v5, "setSettings() device and setting must not empty"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 57
    :cond_1
    :goto_0
    return v3

    .line 47
    :cond_2
    sget-object v5, Lcom/android/bluetooth/ble/app/BleSettings;->TAG:Ljava/lang/String;

    const-string v6, "Set setting: device = %s, setting = %s, value = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v3

    const/4 v8, 0x2

    aput-object p3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "device"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v5, "setting"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "value"

    invoke-virtual {v2, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/android/bluetooth/ble/app/BleSettings;->mSettingsDbHelper:Lcom/android/bluetooth/ble/app/SettingsDbHelper;

    invoke-virtual {v5, v2}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 57
    .local v0, "id":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 107
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/ble/app/BleSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
