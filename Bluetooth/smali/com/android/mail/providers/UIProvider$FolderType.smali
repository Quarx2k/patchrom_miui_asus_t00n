.class public final Lcom/android/mail/providers/UIProvider$FolderType;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FolderType"
.end annotation


# static fields
.field public static final ALL_MAIL:I = 0x200

.field public static final DEFAULT:I = 0x1

.field public static final DRAFT:I = 0x4

.field public static final INBOX:I = 0x2

.field public static final INBOX_SECTION:I = 0x400

.field public static final OTHER_PROVIDER_FOLDER:I = 0x100

.field public static final OUTBOX:I = 0x8

.field public static final SEARCH:I = 0x1000

.field public static final SENT:I = 0x10

.field public static final SPAM:I = 0x40

.field public static final STARRED:I = 0x80

.field public static final TRASH:I = 0x20

.field public static final UNREAD:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
