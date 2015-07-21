.class public final Lcom/android/mail/providers/UIProvider$CursorExtraKeys;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorExtraKeys"
.end annotation


# static fields
.field public static final EXTRA_ERROR:Ljava/lang/String; = "cursor_error"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "cursor_status"

.field public static final EXTRA_TOTAL_COUNT:Ljava/lang/String; = "cursor_total_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
