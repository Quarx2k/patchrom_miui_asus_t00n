.class public final Lcom/android/mail/providers/UIProvider$ConversationOperations;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationOperations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$ConversationOperations$Parameters;
    }
.end annotation


# static fields
.field public static final ARCHIVE:Ljava/lang/String; = "archive"

.field public static final DISCARD_DRAFTS:Ljava/lang/String; = "discard_drafts"

.field public static final FOLDERS_UPDATED:Ljava/lang/String; = "folders_updated"

.field public static final FOLDERS_UPDATED_SPLIT_PATTERN:Ljava/lang/String; = ","

.field public static final MUTE:Ljava/lang/String; = "mute"

.field public static final OPERATION_KEY:Ljava/lang/String; = "operation"

.field public static final REPORT_NOT_SPAM:Ljava/lang/String; = "report_not_spam"

.field public static final REPORT_PHISHING:Ljava/lang/String; = "report_phishing"

.field public static final REPORT_SPAM:Ljava/lang/String; = "report_spam"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    return-void
.end method
