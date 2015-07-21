.class public final Lcom/android/mail/providers/UIProvider$LastSyncResult;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastSyncResult"
.end annotation


# static fields
.field public static final AUTH_ERROR:I = 0x2

.field public static final CONNECTION_ERROR:I = 0x1

.field public static final INTERNAL_ERROR:I = 0x5

.field public static final SECURITY_ERROR:I = 0x3

.field public static final STORAGE_ERROR:I = 0x4

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
