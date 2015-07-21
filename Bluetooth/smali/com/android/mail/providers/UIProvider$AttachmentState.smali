.class public final Lcom/android/mail/providers/UIProvider$AttachmentState;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentState"
.end annotation


# static fields
.field public static final DOWNLOADING:I = 0x2

.field public static final FAILED:I = 0x1

.field public static final NOT_SAVED:I = 0x0

.field public static final PAUSED:I = 0x5

.field public static final REDOWNLOADING:I = 0x4

.field public static final SAVED:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
