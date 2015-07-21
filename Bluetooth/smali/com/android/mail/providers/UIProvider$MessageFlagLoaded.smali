.class public final Lcom/android/mail/providers/UIProvider$MessageFlagLoaded;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageFlagLoaded"
.end annotation


# static fields
.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x5

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_PARTIAL_COMPLETE:I = 0x3

.field public static final FLAG_LOADED_PARTIAL_FETCHING:I = 0x4

.field public static final FLAG_LOADED_UNKNOWN:I = 0x6

.field public static final FLAG_LOADED_UNLOADED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
