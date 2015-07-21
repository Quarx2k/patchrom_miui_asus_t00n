.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z = true

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DRAFT:Ljava/lang/String; = "draft"

.field public static final DRAFTS:Ljava/lang/String; = "drafts"

.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field private static final MAP_TARGET:[B

.field public static final OUTBOX:Ljava/lang/String; = "outbox"

.field public static final QUEUED:Ljava/lang/String; = "queued"

.field public static final SENT:Ljava/lang/String; = "sent"

.field private static final SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

.field private static final SPECIAL_MAILBOX_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "BluetoothMapObexServer"

.field public static final TYPE_DELETED:I = 0x6

.field public static final TYPE_DRAFT:I = 0x3

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field public static final TYPE_INBOX:I = 0x0

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_SENT:I = 0x5

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field public static final UNDELIVERED:Ljava/lang/String; = "undelivered"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z = true

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mMasId:I

.field private mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 51
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->SPECIAL_MAILBOX_TYPES:[I

    .line 101
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "draft"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->SPECIAL_MAILBOX_MAP_NAME:[Ljava/lang/String;

    .line 104
    sput-boolean v3, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    return-void

    .line 51
    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data

    .line 99
    :array_1
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMnsObexClient;I)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "mns"    # Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .param p4, "masId"    # I

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 74
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 112
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 113
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 114
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 115
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    .line 116
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructureEmail()V

    goto :goto_0
.end method

.method private acquireMapLock()V
    .locals 3

    .prologue
    .line 907
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "About to acquire Map:mWakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 910
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "MapPartialWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 911
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 912
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 913
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "Map:mWakeLock acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 917
    :cond_0
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "Map:mWakeLock already acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildFolderStructure()V
    .locals 4

    .prologue
    .line 129
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 131
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 132
    .local v0, "tmpFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 133
    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 134
    const-string v1, "outbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 135
    const-string v1, "sent"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 136
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 137
    const-string v1, "draft"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 138
    return-void
.end method

.method private buildFolderStructureEmail()V
    .locals 4

    .prologue
    .line 145
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 147
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 148
    .local v0, "tmpFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 149
    const-string v1, "inbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 150
    const-string v1, "outbox"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 151
    const-string v1, "sent"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 152
    const-string v1, "drafts"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 153
    return-void
.end method

.method private static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 892
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :try_start_0
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECTION_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "NEW!!! Dumping HeaderSet END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onConnectInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 12
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v8, 0xd0

    const/16 v11, 0x10

    const/16 v7, 0xc6

    .line 166
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "onConnectInternal():"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 169
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 170
    .local v5, "uuid":[B
    if-nez v5, :cond_0

    move v6, v7

    .line 214
    .end local v5    # "uuid":[B
    :goto_0
    return v6

    .line 173
    .restart local v5    # "uuid":[B
    :cond_0
    const-string v6, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onConnect(): uuid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    array-length v6, v5

    if-eq v6, v11, :cond_1

    .line 176
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "Wrong UUID length"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 180
    aget-byte v6, v5, v2

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_2

    .line 181
    const-string v6, "BluetoothMapObexServer"

    const-string v9, "Wrong UUID"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 182
    goto :goto_0

    .line 179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_3
    iget v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v6

    const-wide/16 v9, -0x1

    cmp-long v6, v6, v9

    if-nez v6, :cond_4

    .line 187
    const/16 v6, 0xd3

    goto :goto_0

    .line 189
    :cond_4
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 197
    .local v4, "remote":[B
    if-eqz v4, :cond_5

    .line 198
    const-string v6, "BluetoothMapObexServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConnect(): remote="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :cond_5
    const-string v6, "BluetoothMapObexServer"

    const-string v7, "onConnect(): uuid is ok, will send out MSG_SESSION_ESTABLISHED msg."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 211
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 212
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 214
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 190
    .end local v2    # "i":I
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "remote":[B
    .end local v5    # "uuid":[B
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 192
    goto/16 :goto_0

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v5    # "uuid":[B
    :catch_1
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 203
    goto/16 :goto_0
.end method

.method private onDisconnectInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 227
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onDisconnectInternal(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 230
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 231
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onDisconnect(): msg MSG_SESSION_DISCONNECTED sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onGetInternal(Ljavax/obex/Operation;)I
    .locals 13
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v9, 0xc0

    .line 489
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "appParamRaw":[B
    const/4 v2, 0x0

    .line 496
    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v6

    .line 497
    .local v6, "request":Ljavax/obex/HeaderSet;
    const/16 v8, 0x42

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 498
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 499
    .local v5, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0

    .line 500
    if-eqz v1, :cond_0

    .line 501
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v2, v3

    .line 503
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 504
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnGet type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-nez v7, :cond_1

    .line 507
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type is null?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 548
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 511
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "request":Ljavax/obex/HeaderSet;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "x-obex/folder-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 512
    if-eqz v2, :cond_2

    .line 513
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_GET_FOLDER_LISTING: MaxListCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ListStartOffset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 518
    :cond_3
    const-string v8, "x-bt/MAP-msg-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 519
    if-eqz v2, :cond_4

    .line 520
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_GET_MESSAGE_LISTING: MaxListCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ListStartOffset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubjectLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ParameterMask = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterMessageType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FilterPeriodBegin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterPeriodEnd = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FilterReadStatus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterRecipient = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FilterOriginator = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FilterPriority = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_4
    invoke-direct {p0, p1, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_0

    .line 534
    :cond_5
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 535
    if-eqz v2, :cond_6

    .line 536
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TYPE_MESSAGE (GET): Attachment = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Charset = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", FractionRequest = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_6
    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto/16 :goto_0

    .line 542
    :cond_7
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown type request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    const/16 v8, 0xc6

    goto/16 :goto_0

    .line 545
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 547
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "request headers error, Exception:"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 548
    goto/16 :goto_0
.end method

.method private onSetPathInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 8
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/16 v3, 0xc0

    const/4 v7, 0x1

    .line 426
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .local v2, "folderName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->logHeader(Ljavax/obex/HeaderSet;)V

    .line 433
    const-string v4, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSetPath name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "create: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-ne p3, v7, :cond_0

    .line 437
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 443
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 444
    :cond_1
    if-nez p3, :cond_2

    .line 445
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 461
    :cond_2
    :goto_0
    const-string v3, "BluetoothMapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v3, 0xa0

    .end local v2    # "folderName":Ljava/lang/String;
    :cond_3
    :goto_1
    return v3

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothMapObexServer"

    const-string v5, "request headers error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "folderName":Ljava/lang/String;
    :cond_4
    const-string v4, "draft"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    if-ne v4, v7, :cond_5

    .line 449
    const-string v2, "Drafts"

    .line 451
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 452
    .local v1, "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v1, :cond_6

    .line 453
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    .line 455
    :cond_6
    const-string v4, "BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " folder name  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v4, "BluetoothMapObexServer"

    const-string v5, " Change folder failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v4, "BluetoothMapObexServer"

    const-string v5, " Do message listing before changing the folder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 324
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 325
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v8, 0xcc

    .line 371
    :goto_0
    return v8

    .line 329
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    .line 332
    :cond_2
    const-string v8, "outbox"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "draft"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "drafts"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 334
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Push message only allowed to outbox and draft. folderName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/16 v8, 0xc6

    goto :goto_0

    .line 343
    :cond_3
    invoke-interface {p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 344
    .local v0, "bMsgStream":Ljava/io/InputStream;
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v8

    invoke-static {v0, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v5

    .line 346
    .local v5, "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getContentObserver(I)Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-result-object v6

    .line 347
    .local v6, "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    if-nez v6, :cond_4

    .line 348
    const/16 v8, 0xd3

    goto :goto_0

    .line 351
    :cond_4
    invoke-virtual {v6, v5, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)J

    move-result-wide v2

    .line 352
    .local v2, "handle":J
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushMessage handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_5

    .line 354
    const/16 v8, 0xd3

    goto/16 :goto_0

    .line 356
    :cond_5
    new-instance v7, Ljavax/obex/HeaderSet;

    invoke-direct {v7}, Ljavax/obex/HeaderSet;-><init>()V

    .line 357
    .local v7, "replyHeaders":Ljavax/obex/HeaderSet;
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    invoke-static {v2, v3, v8}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "handleStr":Ljava/lang/String;
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleStr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " message.getType(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 360
    invoke-interface {p1, v7}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    const/16 v8, 0xa0

    goto/16 :goto_0

    .line 363
    .end local v0    # "bMsgStream":Ljava/io/InputStream;
    .end local v2    # "handle":J
    .end local v4    # "handleStr":Ljava/lang/String;
    .end local v5    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v6    # "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .end local v7    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "BluetoothMapObexServer"

    const-string v9, "Wrongly formatted bMessage received"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/16 v8, 0xcc

    goto/16 :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v9, "Exception occured: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/16 v8, 0xc0

    goto/16 :goto_0
.end method

.method private releaseMapLock()V
    .locals 2

    .prologue
    .line 922
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "About to release Map:mWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 926
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "Map:mWakeLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 932
    :cond_0
    return-void

    .line 928
    :cond_1
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "Map:mWakeLock already released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 27
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 694
    const/16 v20, 0x0

    .line 695
    .local v20, "outStream":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 697
    .local v19, "outBytes":[B
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v6, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 700
    .local v18, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/4 v4, 0x0

    .line 701
    .local v4, "bytesWritten":I
    new-instance v21, Ljavax/obex/HeaderSet;

    invoke-direct/range {v21 .. v21}, Ljavax/obex/HeaderSet;-><init>()V

    .line 704
    .local v21, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v23, "tempSubFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapFolderElement;>;"
    if-nez p2, :cond_0

    .line 706
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 707
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v24, 0x400

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 711
    :cond_0
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendFolderList for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v17

    .line 715
    .local v17, "maxListCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v15

    .line 717
    .local v15, "listStartOffset":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_1

    .line 718
    const/4 v15, 0x0

    .line 720
    :cond_1
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 721
    const/16 v17, 0x400

    .line 722
    :cond_2
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mMasId is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getEmailAccountId(Landroid/content/Context;)J

    move-result-wide v12

    .line 725
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v12, v13, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getEmailFolderListAtPath(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 726
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "telecom"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "msg"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 727
    :cond_3
    const-string v24, "BluetoothMapObexServer"

    const-string v25, "Doing no processing"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 729
    .local v22, "str":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 788
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "id":J
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "listStartOffset":I
    .end local v17    # "maxListCount":I
    .end local v22    # "str":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 789
    .local v5, "e1":Ljava/io/IOException;
    const-string v24, "BluetoothMapObexServer"

    const-string v25, "sendFolderListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    const/16 v24, 0xc0

    .line 824
    .end local v5    # "e1":Ljava/io/IOException;
    :goto_1
    return v24

    .line 732
    .restart local v12    # "id":J
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "listStartOffset":I
    .restart local v17    # "maxListCount":I
    :cond_4
    :try_start_1
    const-string v24, "BluetoothMapObexServer"

    const-string v25, "processing for special folders"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 734
    .restart local v22    # "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 735
    .local v9, "folderStr":Ljava/lang/String;
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "folderStr is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 737
    .local v8, "folder":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 738
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " Add Folder:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v8, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v24, 0x0

    aget-object v24, v8, v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 791
    .end local v8    # "folder":[Ljava/lang/String;
    .end local v9    # "folderStr":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "id":J
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "listStartOffset":I
    .end local v17    # "maxListCount":I
    .end local v22    # "str":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 792
    .local v5, "e1":Ljava/lang/IllegalArgumentException;
    const-string v24, "BluetoothMapObexServer"

    const-string v25, "sendFolderListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    const/16 v24, 0xc0

    goto/16 :goto_1

    .line 744
    .end local v5    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "id":J
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "listStartOffset":I
    .restart local v17    # "maxListCount":I
    :cond_6
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 746
    .local v7, "fold":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 749
    .end local v7    # "fold":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "root"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "telecom"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 752
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_9

    .line 753
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 754
    const-string v25, "BluetoothMapObexServer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removing : "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 752
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 759
    :cond_9
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_b

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 761
    const-string v25, "BluetoothMapObexServer"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " listing already contains, hence removing folder : "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->subFolders:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 759
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 768
    .end local v10    # "i":I
    :cond_b
    const-string v24, "BluetoothMapObexServer"

    const-string v25, "final list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 770
    .restart local v22    # "str":Ljava/lang/String;
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_6

    .line 775
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "id":J
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "str":Ljava/lang/String;
    :cond_c
    if-eqz v17, :cond_d

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object v19

    .line 777
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    .line 784
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 785
    const/16 v24, 0x4c

    invoke-virtual/range {v18 .. v18}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 786
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 796
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v16

    .line 798
    .local v16, "maxChunkSize":I
    if-eqz v19, :cond_11

    .line 800
    :goto_8
    :try_start_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v4, v0, :cond_12

    sget-boolean v24, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v24, :cond_12

    .line 801
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v4

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 802
    .local v3, "bytesToWrite":I
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 803
    add-int/2addr v4, v3

    goto :goto_8

    .line 779
    .end local v3    # "bytesToWrite":I
    .end local v16    # "maxChunkSize":I
    :cond_d
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 780
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noEndofBody()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 808
    .restart local v16    # "maxChunkSize":I
    :catchall_0
    move-exception v24

    if-eqz v20, :cond_e

    .line 810
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 808
    :cond_e
    :goto_9
    throw v24

    .line 805
    :catch_2
    move-exception v24

    .line 808
    if-eqz v20, :cond_f

    .line 810
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 817
    :cond_f
    :goto_a
    const-string v24, "BluetoothMapObexServer"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sendFolderList sent "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " bytes out of "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v4, v0, :cond_10

    .line 819
    const/16 v24, 0xa0

    goto/16 :goto_1

    .line 821
    :cond_10
    const/16 v24, 0xc0

    goto/16 :goto_1

    .line 824
    :cond_11
    const/16 v24, 0xa0

    goto/16 :goto_1

    .line 811
    :catch_3
    move-exception v24

    goto :goto_a

    :catch_4
    move-exception v25

    goto :goto_9

    .line 808
    :cond_12
    if-eqz v20, :cond_f

    .line 810
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/16 v6, 0xa0

    const/16 v7, 0xc0

    .line 843
    const/4 v1, 0x0

    .line 845
    .local v1, "bytesWritten":I
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendGetMessageRsp for handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v8, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object v4

    .line 849
    .local v4, "outBytes":[B
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 861
    .local v5, "outStream":Ljava/io/OutputStream;
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 863
    .local v3, "maxChunkSize":I
    if-eqz v4, :cond_0

    .line 865
    :goto_0
    :try_start_1
    array-length v8, v4

    if-ge v1, v8, :cond_3

    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v8, :cond_3

    .line 866
    array-length v8, v4

    sub-int/2addr v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 867
    .local v0, "bytesToWrite":I
    invoke-virtual {v5, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    add-int/2addr v1, v0

    goto :goto_0

    .line 851
    .end local v0    # "bytesToWrite":I
    .end local v3    # "maxChunkSize":I
    .end local v4    # "outBytes":[B
    .end local v5    # "outStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 852
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "BluetoothMapObexServer"

    const-string v8, "sendGetMessageRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 887
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return v6

    .line 854
    :catch_1
    move-exception v2

    .line 855
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "BluetoothMapObexServer"

    const-string v8, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle or charset) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 858
    goto :goto_1

    .line 873
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "maxChunkSize":I
    .restart local v4    # "outBytes":[B
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    .line 875
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 873
    :cond_1
    :goto_2
    throw v6

    .line 870
    :catch_2
    move-exception v8

    .line 873
    if-eqz v5, :cond_2

    .line 875
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 881
    :cond_2
    :goto_3
    array-length v8, v4

    if-eq v1, v8, :cond_0

    move v6, v7

    .line 884
    goto :goto_1

    .line 876
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v7

    goto :goto_2

    .line 873
    :cond_3
    if-eqz v5, :cond_2

    .line 875
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 16
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 566
    const/4 v11, 0x0

    .line 567
    .local v11, "outStream":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 568
    .local v9, "outBytes":[B
    const/4 v3, 0x0

    .line 569
    .local v3, "bytesWritten":I
    const/4 v5, 0x0

    .line 570
    .local v5, "hasUnread":Z
    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    .line 571
    .local v12, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 573
    .local v8, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p3

    .line 578
    :cond_1
    :goto_0
    const-string v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "folderName is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v13, "BluetoothMapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mCurrentFolder  is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v13}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 582
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "Path not set. returning from here"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/16 v13, 0xc0

    .line 677
    :goto_1
    return v13

    .line 575
    :cond_2
    const-string v13, "draft"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 576
    const-string p3, "Drafts"

    goto :goto_0

    .line 585
    :cond_3
    if-nez p2, :cond_4

    .line 586
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 587
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 588
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 594
    :cond_4
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 596
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 597
    const/16 v13, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 599
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 600
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 602
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v13

    if-eqz v13, :cond_8

    .line 603
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    if-nez v13, :cond_7

    .line 604
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v10

    .line 608
    .local v10, "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :goto_2
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 609
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode()[B

    move-result-object v9

    .line 610
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result v5

    .line 629
    .end local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :goto_3
    if-eqz v5, :cond_a

    .line 631
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 636
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 637
    const/16 v13, 0x4c

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 638
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 648
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v7

    .line 649
    .local v7, "maxChunkSize":I
    if-eqz v9, :cond_d

    .line 651
    :goto_5
    :try_start_1
    array-length v13, v9

    if-ge v3, v13, :cond_f

    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    if-nez v13, :cond_f

    .line 652
    array-length v13, v9

    sub-int/2addr v13, v3

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 653
    .local v2, "bytesToWrite":I
    invoke-virtual {v11, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    add-int/2addr v3, v2

    goto :goto_5

    .line 606
    .end local v2    # "bytesToWrite":I
    .end local v7    # "maxChunkSize":I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v10

    .restart local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    goto :goto_2

    .line 613
    .end local v10    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    if-nez v13, :cond_9

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v6

    .line 615
    .local v6, "listSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    .line 620
    :goto_6
    invoke-virtual {v8, v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 621
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "not setting body and end of body header"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 623
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noEndofBody()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 640
    .end local v6    # "listSize":I
    :catch_0
    move-exception v4

    .line 641
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "sendMessageListingRsp: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    const/16 v13, 0xc0

    goto/16 :goto_1

    .line 617
    .end local v4    # "e":Ljava/io/IOException;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSizeEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v6

    .line 618
    .restart local v6    # "listSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnreadEmail(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    goto :goto_6

    .line 633
    .end local v6    # "listSize":I
    :cond_a
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 643
    :catch_1
    move-exception v4

    .line 644
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v13, "BluetoothMapObexServer"

    const-string v14, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    const/16 v13, 0xc0

    goto/16 :goto_1

    .line 656
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "maxChunkSize":I
    :catch_2
    move-exception v4

    .line 657
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v13, "BluetoothMapObexServer"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 660
    if-eqz v11, :cond_b

    .line 662
    :try_start_5
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 668
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    :goto_7
    array-length v13, v9

    if-eq v3, v13, :cond_e

    .line 669
    const/16 v13, 0xc0

    goto/16 :goto_1

    .line 660
    :catchall_0
    move-exception v13

    if-eqz v11, :cond_c

    .line 662
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 660
    :cond_c
    :goto_8
    throw v13

    .line 672
    :cond_d
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 677
    :cond_e
    :goto_9
    const/16 v13, 0xa0

    goto/16 :goto_1

    .line 673
    :catch_3
    move-exception v13

    goto :goto_9

    .line 663
    :catch_4
    move-exception v14

    goto :goto_8

    :catch_5
    move-exception v13

    goto :goto_7

    .line 660
    :cond_f
    if-eqz v11, :cond_b

    .line 662
    :try_start_8
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11
    .param p1, "msgHandle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/16 v8, 0xcc

    const/4 v9, -0x1

    const/16 v7, 0xd3

    .line 375
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v3

    .line 376
    .local v3, "indicator":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v6

    .line 380
    .local v6, "value":I
    if-eq v3, v9, :cond_0

    if-eq v6, v9, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v7, v8

    .line 407
    :cond_1
    :goto_0
    return v7

    .line 385
    :cond_2
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getContentObserver(I)Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-result-object v5

    .line 386
    .local v5, "observer":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    if-eqz v5, :cond_1

    .line 391
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v1

    .line 392
    .local v1, "handle":J
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 398
    .local v4, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 399
    invoke-virtual {v5, v1, v2, v4, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 407
    :cond_3
    const/16 v7, 0xa0

    goto :goto_0

    .line 393
    .end local v1    # "handle":J
    .end local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrongly formatted message handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 395
    goto :goto_0

    .line 403
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "handle":J
    .restart local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_4
    invoke-virtual {v5, v1, v2, v4, v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;I)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0
.end method

.method private setNotificationRegistration(Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 4
    .param p1, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMnsClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->getMessageHandler()Landroid/os/Handler;

    move-result-object v0

    .line 310
    .local v0, "mns":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 312
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 313
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 314
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 315
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 316
    const-string v2, "BluetoothMapObexServer"

    const-string v3, "MSG_MNS_NOTIFICATION_REGISTRATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/16 v2, 0xa0

    .line 319
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xd3

    goto :goto_0
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 241
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "onAbort(): enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sIsAborted:Z

    .line 243
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 467
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: onClose"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 469
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 472
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 473
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onClose(): msg MSG_SERVERSESSION_CLOSE sent out."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 477
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 3
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 157
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onConnect():"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->onConnectInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v0

    .line 160
    .local v0, "retVal":I
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: exiting from onConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 162
    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 219
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "onDisconnect(): enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->onDisconnectInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V

    .line 222
    const-string v0, "BluetoothMapObexServer"

    const-string v1, "BluetoothMapObexServer: exiting from onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 224
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 3
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 481
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: onGet"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 483
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->onGetInternal(Ljavax/obex/Operation;)I

    move-result v0

    .line 484
    .local v0, "retVal":I
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: exiting from onGet"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 486
    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 3
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 248
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onPut(): enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->onPutInternal(Ljavax/obex/Operation;)I

    move-result v0

    .line 251
    .local v0, "retVal":I
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: exiting from onPut"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 253
    return v0
.end method

.method public onPutInternal(Ljavax/obex/Operation;)I
    .locals 13
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v9, 0xc0

    const/4 v12, 0x1

    .line 256
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "onPutInternal(): enter"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v6, 0x0

    .line 260
    .local v6, "request":Ljavax/obex/HeaderSet;
    const/4 v2, 0x0

    .line 263
    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v6

    .line 264
    const/16 v8, 0x42

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 265
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .local v5, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0

    .line 267
    .local v1, "appParamRaw":[B
    if-eqz v1, :cond_0

    .line 268
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v2, v3

    .line 274
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string v8, "BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v8, "x-bt/MAP-messageUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    const-string v8, "BluetoothMapObexServer"

    const-string v9, "TYPE_MESSAGE_UPDATE:"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    if-ne v8, v12, :cond_1

    .line 280
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgUpdate()V

    .line 281
    const/16 v8, 0xa0

    .line 304
    .end local v1    # "appParamRaw":[B
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 269
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "BluetoothMapObexServer"

    const-string v10, "request headers error"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 271
    goto :goto_0

    .line 283
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "appParamRaw":[B
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    const/16 v8, 0xd1

    goto :goto_0

    .line 285
    :cond_2
    const-string v8, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 287
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TYPE_SET_NOTIFICATION_REGISTRATION: NotificationStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setNotificationRegistration(Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 290
    :cond_3
    const-string v8, "x-bt/messageStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 292
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TYPE_SET_MESSAGE_STATUS: StatusIndicator: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", StatusValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 295
    :cond_4
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 297
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TYPE_MESSAGE: Transparet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Retry: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v8, "BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "              charset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto/16 :goto_0

    :cond_5
    move v8, v9

    .line 304
    goto/16 :goto_0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 3
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    .line 413
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "onSetPath():"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireMapLock()V

    .line 415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->onSetPathInternal(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I

    move-result v0

    .line 416
    .local v0, "retVal":I
    const-string v1, "BluetoothMapObexServer"

    const-string v2, "BluetoothMapObexServer: exiting from onSetPath"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->releaseMapLock()V

    .line 418
    return v0
.end method
