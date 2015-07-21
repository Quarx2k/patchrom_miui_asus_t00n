.class public final Lcom/android/mail/providers/UIProvider$AccountCapabilities;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountCapabilities"
.end annotation


# static fields
.field public static final ARCHIVE:I = 0x8

.field public static final DISCARD_CONVERSATION_DRAFTS:I = 0x100000

.field public static final DRAFT_SYNCHRONIZATION:I = 0x100

.field public static final EMPTY_SPAM:I = 0x400000

.field public static final EMPTY_TRASH:I = 0x200000

.field public static final FOLDER_SERVER_SEARCH:I = 0x40

.field public static final HELP_CONTENT:I = 0x8000

.field public static final INITIAL_CONVERSATION_LIMIT:I = 0x40000

.field public static final LOCAL_SEARCH:I = 0x800

.field public static final MARK_IMPORTANT:I = 0x20000

.field public static final MULTIPLE_FOLDERS_PER_CONV:I = 0x2000

.field public static final MULTIPLE_FROM_ADDRESSES:I = 0x200

.field public static final MUTE:I = 0x10

.field public static final NESTED_FOLDERS:I = 0x800000

.field public static final REPORT_PHISHING:I = 0x4

.field public static final REPORT_SPAM:I = 0x2

.field public static final SANITIZED_HTML:I = 0x80

.field public static final SENDING_UNAVAILABLE:I = 0x80000

.field public static final SEND_FEEDBACK:I = 0x10000

.field public static final SERVER_SEARCH:I = 0x20

.field public static final SMART_FORWARD:I = 0x1000000

.field public static final SMART_REPLY:I = 0x400

.field public static final SYNCABLE_FOLDERS:I = 0x1

.field public static final THREADED_CONVERSATIONS:I = 0x1000

.field public static final UNDO:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
