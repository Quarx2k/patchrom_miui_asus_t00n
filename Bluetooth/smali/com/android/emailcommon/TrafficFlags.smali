.class public Lcom/android/emailcommon/TrafficFlags;
.super Ljava/lang/Object;
.source "TrafficFlags.java"


# static fields
.field private static final ACCOUNT_MASK:I = 0xffff

.field public static final DATA_CALENDAR:I = 0x80000

.field public static final DATA_CONTACTS:I = 0x40000

.field public static final DATA_EMAIL:I = 0x0

.field private static final DATA_MASK:I = 0xc0000

.field private static final DATA_SHIFT:I = 0x12

.field private static final REASONS:[Ljava/lang/String;

.field public static final REASON_ATTACHMENT_PRECACHE:I = 0x200000

.field public static final REASON_ATTACHMENT_USER:I = 0x100000

.field private static final REASON_MASK:I = 0x300000

.field private static final REASON_SHIFT:I = 0x14

.field public static final REASON_SYNC:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sync"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "precache"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 70
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v0, v0

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    return v0
.end method

.method public static getSmtpFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 81
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/emailcommon/provider/Account;

    .prologue
    .line 59
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    long-to-int v0, v0

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "flags"    # I

    .prologue
    const/16 v4, 0x2c

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const v2, 0xffff

    and-int/2addr v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    sget-object v2, Lcom/android/emailcommon/TrafficFlags;->REASONS:[Ljava/lang/String;

    const/high16 v3, 0x300000

    and-int/2addr v3, p0

    shr-int/lit8 v3, v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/high16 v2, 0xc0000

    and-int v0, p0, v2

    .line 91
    .local v0, "maskedData":I
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const/high16 v2, 0x80000

    if-ne v0, v2, :cond_1

    const-string v2, "calendar"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 93
    :cond_1
    const-string v2, "contacts"

    goto :goto_0
.end method
