.class public abstract Lcom/android/emailcommon/service/EmailServiceStatus;
.super Ljava/lang/Object;
.source "EmailServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;
    }
.end annotation


# static fields
.field public static final ACCESS_DENIED:I = 0x19

.field public static final ACCOUNT_UNINITIALIZED:I = 0x18

.field public static final ATTACHMENT_NOT_FOUND:I = 0x11

.field public static final CLIENT_CERTIFICATE_ERROR:I = 0x21

.field public static final CONNECTION_ERROR:I = 0x20

.field public static final FOLDER_NOT_CREATED:I = 0x14

.field public static final FOLDER_NOT_DELETED:I = 0x12

.field public static final FOLDER_NOT_RENAMED:I = 0x13

.field public static final IN_PROGRESS:I = 0x1

.field public static final LOGIN_FAILED:I = 0x16

.field public static final MESSAGE_NOT_FOUND:I = 0x10

.field public static final REMOTE_EXCEPTION:I = 0x15

.field public static final SECURITY_FAILURE:I = 0x17

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EXTRAS_CALLBACK_ARG:Ljava/lang/String; = "callback_arg"

.field public static final SYNC_EXTRAS_CALLBACK_METHOD:Ljava/lang/String; = "callback_method"

.field public static final SYNC_EXTRAS_CALLBACK_URI:Ljava/lang/String; = "callback_uri"

.field public static final SYNC_RESULT:Ljava/lang/String; = "result"

.field public static final SYNC_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final SYNC_STATUS_ID:Ljava/lang/String; = "id"

.field public static final SYNC_STATUS_PROGRESS:Ljava/lang/String; = "progress"

.field public static final SYNC_STATUS_TYPE:Ljava/lang/String; = "type"

.field public static final SYNC_STATUS_TYPE_MAILBOX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JIII)V
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "syncExtras"    # Landroid/os/Bundle;
    .param p2, "mailboxId"    # J
    .param p4, "statusCode"    # I
    .param p5, "progress"    # I
    .param p6, "syncResult"    # I

    .prologue
    .line 125
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;IJIIILcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;)V

    .line 127
    return-void
.end method

.method private static syncStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;IJIIILcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;)V
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "syncExtras"    # Landroid/os/Bundle;
    .param p2, "statusType"    # I
    .param p3, "id"    # J
    .param p5, "statusCode"    # I
    .param p6, "progress"    # I
    .param p7, "syncResult"    # I
    .param p8, "writer"    # Lcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;

    .prologue
    .line 94
    const-string v4, "callback_uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "callbackUri":Ljava/lang/String;
    const-string v4, "callback_method"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "callbackMethod":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 97
    const-string v4, "callback_arg"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "callbackArg":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 99
    .local v3, "statusExtras":Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v4, "id"

    invoke-virtual {v3, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v4, "status_code"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const/4 v4, 0x1

    if-eq p5, v4, :cond_0

    .line 103
    const-string v4, "result"

    invoke-virtual {v3, v4, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    :cond_0
    const-string v4, "progress"

    invoke-virtual {v3, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    if-eqz p8, :cond_1

    .line 107
    invoke-interface {p8, v3}, Lcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;->addToStatus(Landroid/os/Bundle;)V

    .line 109
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 111
    .end local v0    # "callbackArg":Ljava/lang/String;
    .end local v3    # "statusExtras":Landroid/os/Bundle;
    :cond_2
    return-void
.end method
