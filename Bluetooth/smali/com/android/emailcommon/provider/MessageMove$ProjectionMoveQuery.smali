.class interface abstract Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;
.super Ljava/lang/Object;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionMoveQuery"
.end annotation


# static fields
.field public static final COLUMN_DST_FOLDER_KEY:I = 0x4

.field public static final COLUMN_DST_FOLDER_SERVER_ID:I = 0x6

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MESSAGE_KEY:I = 0x1

.field public static final COLUMN_SERVER_ID:I = 0x2

.field public static final COLUMN_SRC_FOLDER_KEY:I = 0x3

.field public static final COLUMN_SRC_FOLDER_SERVER_ID:I = 0x5

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "messageServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "srcFolderKey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dstFolderKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "srcFolderServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dstFolderServerId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove$ProjectionMoveQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
