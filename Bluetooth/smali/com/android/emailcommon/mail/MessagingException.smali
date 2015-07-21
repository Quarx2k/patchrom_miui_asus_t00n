.class public Lcom/android/emailcommon/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final ACCESS_DENIED:I = 0xe

.field public static final ATTACHMENT_NOT_FOUND:I = 0xf

.field public static final AUTHENTICATION_FAILED:I = 0x5

.field public static final AUTHENTICATION_FAILED_OR_SERVER_ERROR:I = 0xd

.field public static final AUTH_REQUIRED:I = 0x3

.field public static final AUTODISCOVER_AUTHENTICATION_FAILED:I = 0xb

.field public static final AUTODISCOVER_AUTHENTICATION_RESULT:I = 0xc

.field public static final CERTIFICATE_VALIDATION_ERROR:I = 0xa

.field public static final CLIENT_CERTIFICATE_ERROR:I = 0x11

.field public static final CLIENT_CERTIFICATE_REQUIRED:I = 0x10

.field public static final DUPLICATE_ACCOUNT:I = 0x6

.field public static final GENERAL_SECURITY:I = 0x4

.field public static final IOERROR:I = 0x1

.field public static final NO_ERROR:I = -0x1

.field public static final PROTOCOL_VERSION_UNSUPPORTED:I = 0x9

.field public static final SECURITY_POLICIES_REQUIRED:I = 0x7

.field public static final SECURITY_POLICIES_UNSUPPORTED:I = 0x8

.field public static final TLS_REQUIRED:I = 0x2

.field public static final UNSPECIFIED_EXCEPTION:I = 0x0

.field public static final serialVersionUID:J = -0x1L


# instance fields
.field protected mExceptionData:Ljava/lang/Object;

.field protected mExceptionType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "exceptionType"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 117
    iput-object p3, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iput p1, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getExceptionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExceptionType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    return v0
.end method
