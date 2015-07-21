.class public Lcom/android/emailcommon/service/SearchParams$SearchParamsError;
.super Ljava/lang/Object;
.source "SearchParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/SearchParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchParamsError"
.end annotation


# static fields
.field public static final CANT_SEARCH_ALL_MAILBOXES:I = -0x1

.field public static final CANT_SEARCH_CHILDREN:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
