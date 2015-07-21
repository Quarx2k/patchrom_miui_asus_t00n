.class public final Lcom/android/mail/providers/UIProvider$UpdateNotificationExtras;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateNotificationExtras"
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "notification_extra_account"

.field public static final EXTRA_FOLDER:Ljava/lang/String; = "notification_extra_folder"

.field public static final EXTRA_UPDATED_UNREAD_COUNT:Ljava/lang/String; = "notification_updated_unread_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
