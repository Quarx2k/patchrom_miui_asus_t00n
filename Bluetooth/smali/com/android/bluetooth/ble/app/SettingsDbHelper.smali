.class public Lcom/android/bluetooth/ble/app/SettingsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsDbHelper.java"


# static fields
.field static final COLUMN_DEVICE:Ljava/lang/String; = "device"

.field static final COLUMN_SETTING:Ljava/lang/String; = "setting"

.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table settings(device text not null, setting text not null, value text, PRIMARY KEY (device, setting));"

.field static final DATABASE_NAME:Ljava/lang/String; = "miuible.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final TABLE_SETTINGS:Ljava/lang/String; = "settings"

.field static final URI_TABLE_SETTINGS:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "sqlite://com.android.bluetooth.ble/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->URI_TABLE_SETTINGS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "miuible.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 80
    .local v1, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "settings"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "rowsDeleted":I
    if-lez v0, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->URI_TABLE_SETTINGS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 85
    :cond_0
    return v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 70
    .local v2, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "settings"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v5, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 72
    .local v0, "id":J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->URI_TABLE_SETTINGS:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 75
    :cond_0
    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 48
    const-string v0, "create table settings(device text not null, setting text not null, value text, PRIMARY KEY (device, setting));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 53
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    return-void
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 58
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 59
    .local v0, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    .line 62
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    .local v8, "cursor":Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90
    .local v1, "sqlDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "settings"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "rowsUpdated":I
    if-lez v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->URI_TABLE_SETTINGS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 95
    :cond_0
    return v0
.end method
