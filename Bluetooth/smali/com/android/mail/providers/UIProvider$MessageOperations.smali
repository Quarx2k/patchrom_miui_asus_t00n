.class public final Lcom/android/mail/providers/UIProvider$MessageOperations;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageOperations"
.end annotation


# static fields
.field public static final RESPOND_ACCEPT:I = 0x1

.field public static final RESPOND_COLUMN:Ljava/lang/String; = "respond"

.field public static final RESPOND_DECLINE:I = 0x3

.field public static final RESPOND_TENTATIVE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    return-void
.end method
