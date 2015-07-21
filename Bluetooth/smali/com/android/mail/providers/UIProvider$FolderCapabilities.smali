.class public final Lcom/android/mail/providers/UIProvider$FolderCapabilities;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderCapabilities"
.end annotation


# static fields
.field public static final ALLOWS_MOVE_TO_INBOX:I = 0x10000

.field public static final ALLOWS_REMOVE_CONVERSATION:I = 0x4000

.field public static final ARCHIVE:I = 0x10

.field public static final CAN_ACCEPT_MOVED_MESSAGES:I = 0x8

.field public static final DELETE:I = 0x20

.field public static final DELETE_ACTION_FINAL:I = 0x800

.field public static final DESTRUCTIVE_MUTE:I = 0x100

.field public static final IS_VIRTUAL:I = 0x1000

.field public static final MARK_NOT_SPAM:I = 0x80

.field public static final MULTI_MOVE:I = 0x8000

.field public static final ONLY_IMPORTANT:I = 0x400

.field public static final PARENT:I = 0x2

.field public static final REPORT_PHISHING:I = 0x2000

.field public static final REPORT_SPAM:I = 0x40

.field public static final SUPPORTS_SETTINGS:I = 0x200

.field public static final SYNCABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
