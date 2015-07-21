.class public Lcom/android/bluetooth/map/BluetoothMapUtils;
.super Ljava/lang/Object;
.source "BluetoothMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapUtils$1;,
        Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EMAIL_ACCOUNT_URI:Landroid/net/Uri;

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final EMAIL_BOX_PROJECTION:[Ljava/lang/String;

.field public static final EMAIL_TYPE:Ljava/lang/String; = "type"

.field public static final EMAIL_URI:Landroid/net/Uri;

.field private static final HANDLE_TYPE_EMAIL_MASK:J = 0x10000000L

.field private static final HANDLE_TYPE_MASK:J = 0x78000000L

.field private static final HANDLE_TYPE_MMS_MASK:J = 0x8000000L

.field private static final HANDLE_TYPE_SMS_CDMA_MASK:J = 0x40000000L

.field private static final HANDLE_TYPE_SMS_GSM_MASK:J = 0x20000000L

.field public static final IS_DEFAULT:Ljava/lang/String; = "isDefault"

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "MapUtils"

.field private static final V:Z = true

.field private static mContext:Landroid/content/Context;

.field private static mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_URI:Landroid/net/Uri;

    const-string v1, "account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "accountKey"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_BOX_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "emailAddress"

    aput-object v1, v0, v3

    const-string v1, "isDefault"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getCpHandle(Ljava/lang/String;)J
    .locals 4
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 167
    .local v0, "cpHandle":J
    const-wide/32 v2, -0x78000001

    and-long/2addr v0, v2

    .line 168
    return-wide v0
.end method

.method public static getEmailAccountId(Landroid/content/Context;)J
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "MapUtils"

    const-string v1, "getEmailAccountIdList()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-wide/16 v8, -0x1

    .line 131
    .local v8, "id":J
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object v11, p0

    .line 133
    .local v11, "mContext":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mResolver:Landroid/content/ContentResolver;

    .line 135
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapUtils;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 140
    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-wide v8

    .line 144
    :catch_0
    move-exception v7

    .line 145
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLite exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;
    .locals 6
    .param p0, "cpHandle"    # J
    .param p2, "messageType"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 81
    const-string v0, "-1"

    .line 82
    .local v0, "mapHandle":Ljava/lang/String;
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :pswitch_0
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x8000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 88
    :pswitch_1
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x20000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 91
    :pswitch_2
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x40000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    goto :goto_0

    .line 94
    :pswitch_3
    const-string v1, "%016X"

    new-array v2, v3, [Ljava/lang/Object;

    const-wide/32 v3, 0x10000000

    or-long/2addr v3, p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getMsgHandleAsLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    .line 156
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 6
    .param p0, "mapHandle"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 177
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 179
    .local v0, "cpHandle":J
    const-wide/32 v2, 0x8000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 180
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 186
    :goto_0
    return-object v2

    .line 181
    :cond_0
    const-wide/32 v2, 0x10000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 182
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 183
    :cond_1
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 184
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 185
    :cond_2
    const-wide/32 v2, 0x40000000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 186
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 188
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Message type not found in handle string."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSystemMailboxGuessType(Ljava/lang/String;)I
    .locals 1
    .param p0, "folderName"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "outbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x4

    .line 122
    :goto_0
    return v0

    .line 106
    :cond_0
    const-string v0, "inbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    const-string v0, "drafts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const/4 v0, 0x3

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "Trash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    const/4 v0, 0x6

    goto :goto_0

    .line 112
    :cond_3
    const-string v0, "Sent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const/4 v0, 0x5

    goto :goto_0

    .line 114
    :cond_4
    const-string v0, "Junk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const/4 v0, 0x7

    goto :goto_0

    .line 116
    :cond_5
    const-string v0, "Sent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    const/16 v0, 0x9

    goto :goto_0

    .line 118
    :cond_6
    const-string v0, "Unread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    const/16 v0, 0xa

    goto :goto_0

    .line 122
    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method
