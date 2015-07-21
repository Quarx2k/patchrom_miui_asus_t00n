.class public Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
.super Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackingKeyManager"
.end annotation


# instance fields
.field private volatile mLastTimeCertRequested:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->mLastTimeCertRequested:J

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->mLastTimeCertRequested:J

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastCertReqTime()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->mLastTimeCertRequested:J

    return-wide v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method
