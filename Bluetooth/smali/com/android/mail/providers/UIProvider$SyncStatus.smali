.class public final Lcom/android/mail/providers/UIProvider$SyncStatus;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncStatus"
.end annotation


# static fields
.field public static final ACCOUNT_INITIALIZATION_REQUIRED:I = 0x20

.field public static final BACKGROUND_SYNC:I = 0x4

.field public static final INITIAL_SYNC_NEEDED:I = 0x8

.field public static final LIVE_QUERY:I = 0x2

.field public static final MANUAL_SYNC_REQUIRED:I = 0x10

.field public static final NO_SYNC:I = 0x0

.field public static final USER_QUERY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_REFRESH:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSyncInProgress(I)Z
    .locals 1
    .param p0, "syncStatus"    # I

    .prologue
    .line 83
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
