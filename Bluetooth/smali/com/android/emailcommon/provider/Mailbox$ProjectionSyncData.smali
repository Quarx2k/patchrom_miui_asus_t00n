.class public interface abstract Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;
.super Ljava/lang/Object;
.source "Mailbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/Mailbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectionSyncData"
.end annotation


# static fields
.field public static final COLUMN_SERVER_ID:I = 0x0

.field public static final COLUMN_SYNC_KEY:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/Mailbox$ProjectionSyncData;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
