.class interface abstract Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;
.super Ljava/lang/Object;
.source "MessageMove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/MessageMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProjectionLastSyncedMailboxQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_SRC_FOLDER_KEY:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "srcFolderKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/MessageMove$ProjectionLastSyncedMailboxQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
