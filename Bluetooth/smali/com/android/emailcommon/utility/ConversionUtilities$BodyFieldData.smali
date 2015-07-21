.class public Lcom/android/emailcommon/utility/ConversionUtilities$BodyFieldData;
.super Ljava/lang/Object;
.source "ConversionUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/ConversionUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyFieldData"
.end annotation


# instance fields
.field public htmlContent:Ljava/lang/String;

.field public htmlReply:Ljava/lang/String;

.field public introText:Ljava/lang/String;

.field public isQuotedForward:Z

.field public isQuotedReply:Z

.field public snippet:Ljava/lang/String;

.field public textContent:Ljava/lang/String;

.field public textReply:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
