.class public final Lcom/android/mail/providers/UIProvider$AttachmentRendition;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentRendition"
.end annotation


# static fields
.field public static final BEST:I = 0x1

.field private static final BEST_STRING:Ljava/lang/String; = "BEST"

.field public static final PREFERRED_RENDITIONS:[I

.field public static final SIMPLE:I = 0x0

.field private static final SIMPLE_STRING:Ljava/lang/String; = "SIMPLE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2140
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mail/providers/UIProvider$AttachmentRendition;->PREFERRED_RENDITIONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRendition(Ljava/lang/String;)I
    .locals 4
    .param p0, "rendition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2143
    const-string v2, "SIMPLE"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2146
    :goto_0
    return v0

    .line 2145
    :cond_0
    const-string v2, "BEST"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 2146
    goto :goto_0

    .line 2149
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown rendition %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "rendition"    # I

    .prologue
    const/4 v2, 0x1

    .line 2153
    if-ne p0, v2, :cond_0

    .line 2154
    const-string v0, "BEST"

    .line 2156
    :goto_0
    return-object v0

    .line 2155
    :cond_0
    if-nez p0, :cond_1

    .line 2156
    const-string v0, "SIMPLE"

    goto :goto_0

    .line 2159
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown rendition %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
