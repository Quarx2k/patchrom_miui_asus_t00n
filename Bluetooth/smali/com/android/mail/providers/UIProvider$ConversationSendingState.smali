.class public final Lcom/android/mail/providers/UIProvider$ConversationSendingState;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationSendingState"
.end annotation


# static fields
.field public static final OTHER:I = 0x0

.field public static final QUEUED:I = 0x1

.field public static final SENDING:I = 0x2

.field public static final SEND_ERROR:I = -0x1

.field public static final SENT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
