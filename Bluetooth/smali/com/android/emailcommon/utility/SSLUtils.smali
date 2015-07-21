.class public Lcom/android/emailcommon/utility/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/SSLUtils$1;,
        Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;,
        Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;
    }
.end annotation


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "Email.Ssl"

.field private static sSecureFactory:Landroid/net/SSLCertificateSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public static escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v4, 0x2b

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/emailcommon/utility/SSLUtils;->isAsciiLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/emailcommon/utility/SSLUtils;->isAsciiNumber(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2d

    if-eq v3, v0, :cond_0

    const/16 v3, 0x2e

    if-ne v3, v0, :cond_1

    .line 207
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    if-ne v4, v0, :cond_2

    .line 210
    const-string v3, "++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "keyManager"    # Ljavax/net/ssl/KeyManager;
    .param p3, "insecure"    # Z

    .prologue
    .line 167
    invoke-static {p0, p1, p3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    .line 168
    .local v0, "underlying":Landroid/net/SSLCertificateSocketFactory;
    if-eqz p2, :cond_0

    .line 169
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Landroid/net/SSLCertificateSocketFactory;->setKeyManagers([Ljavax/net/ssl/KeyManager;)V

    .line 171
    :cond_0
    new-instance v1, Lcom/android/emailcommon/utility/SSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/SSLSocketFactory;-><init>(Landroid/net/SSLCertificateSocketFactory;)V

    .line 172
    .local v1, "wrapped":Lcom/android/emailcommon/utility/SSLSocketFactory;
    if-eqz p3, :cond_1

    .line 173
    sget-object v2, Lcom/android/emailcommon/utility/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 175
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized getSSLSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Z)Landroid/net/SSLCertificateSocketFactory;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p2, "insecure"    # Z

    .prologue
    .line 145
    const-class v2, Lcom/android/emailcommon/utility/SSLUtils;

    monitor-enter v2

    if-eqz p2, :cond_0

    .line 146
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v3}, Landroid/net/SSLCertificateSocketFactory;->getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 148
    .local v0, "insecureFactory":Landroid/net/SSLCertificateSocketFactory;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;

    invoke-direct {v4, p0, p1}, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v0    # "insecureFactory":Landroid/net/SSLCertificateSocketFactory;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 153
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    if-nez v1, :cond_1

    .line 154
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    check-cast v1, Landroid/net/SSLCertificateSocketFactory;

    sput-object v1, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;

    .line 157
    :cond_1
    sget-object v0, Lcom/android/emailcommon/utility/SSLUtils;->sSecureFactory:Landroid/net/SSLCertificateSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isAsciiLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 181
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAsciiNumber(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 187
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
