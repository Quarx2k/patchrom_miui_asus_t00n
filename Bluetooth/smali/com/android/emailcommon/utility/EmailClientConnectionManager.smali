.class public Lcom/android/emailcommon/utility/EmailClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "EmailClientConnectionManager.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final STANDARD_PORT:I = 0x50

.field private static final STANDARD_SSL_PORT:I = 0x1bb


# instance fields
.field private final mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;


# direct methods
.method private constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "registry"    # Lorg/apache/http/conn/scheme/SchemeRegistry;
    .param p3, "keyManager"    # Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 60
    iput-object p3, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    .line 61
    return-void
.end method

.method public static makeScheme(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "useSsl"    # Z
    .param p1, "trustAllServerCerts"    # Z
    .param p2, "clientCertAlias"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-static {p2, p1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "httpts"

    goto :goto_0

    :cond_1
    const-string v0, "https"

    goto :goto_0

    :cond_2
    const-string v0, "http"

    goto :goto_0
.end method

.method private static makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "clientCertAlias"    # Ljava/lang/String;
    .param p1, "trustAllServerCerts"    # Z

    .prologue
    .line 148
    invoke-static {p0}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "safeAlias":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "httpts"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+clientCert+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "https"

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;Lorg/apache/http/params/HttpParams;Lcom/android/emailcommon/provider/HostAuth;)Lcom/android/emailcommon/utility/EmailClientConnectionManager;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    const/16 v5, 0x1bb

    .line 65
    new-instance v0, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;-><init>()V

    .line 66
    .local v0, "keyManager":Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldUseSsl()Z

    move-result v3

    .line 67
    .local v3, "ssl":Z
    iget v1, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 70
    .local v1, "port":I
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 71
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    if-eqz v3, :cond_0

    const/16 v4, 0x50

    :goto_0
    invoke-direct {v6, v7, v8, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/4 v4, 0x0

    invoke-static {p0, p2, v0, v4}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v8

    if-eqz v3, :cond_1

    move v4, v1

    :goto_1
    invoke-direct {v6, v7, v8, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 78
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "httpts"

    const/4 v7, 0x1

    invoke-static {p0, p2, v0, v7}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v7

    if-eqz v3, :cond_2

    .end local v1    # "port":I
    :goto_2
    invoke-direct {v4, v6, v7, v1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 82
    new-instance v4, Lcom/android/emailcommon/utility/EmailClientConnectionManager;

    invoke-direct {v4, p1, v2, v0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;)V

    return-object v4

    .restart local v1    # "port":I
    :cond_0
    move v4, v1

    .line 71
    goto :goto_0

    :cond_1
    move v4, v5

    .line 74
    goto :goto_1

    :cond_2
    move v1, v5

    .line 78
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized hasDetectedUnsatisfiedCertReq(J)Z
    .locals 2
    .param p1, "since"    # J

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->mTrackingKeyManager:Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/SSLUtils$TrackingKeyManager;->getLastCertReqTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerClientCert(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    .line 98
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    iget-object v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "schemeName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 101
    .local v0, "existing":Lorg/apache/http/conn/scheme/Scheme;
    if-nez v0, :cond_0

    .line 106
    iget-object v6, p2, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    move-result-object v2

    .line 108
    .local v2, "keyManager":Ljavax/net/ssl/KeyManager;
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/HostAuth;->shouldTrustAllServerCerts()Z

    move-result v1

    .line 109
    .local v1, "insecure":Z
    invoke-static {p1, p2, v2, v1}, Lcom/android/emailcommon/utility/SSLUtils;->getHttpSocketFactory(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;Ljavax/net/ssl/KeyManager;Z)Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v5

    .line 111
    .local v5, "ssf":Lcom/android/emailcommon/utility/SSLSocketFactory;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    iget v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-direct {v6, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "existing":Lorg/apache/http/conn/scheme/Scheme;
    .end local v1    # "insecure":Z
    .end local v2    # "keyManager":Ljavax/net/ssl/KeyManager;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "schemeName":Ljava/lang/String;
    .end local v5    # "ssf":Lcom/android/emailcommon/utility/SSLSocketFactory;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized unregisterClientCert(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "clientCertAlias"    # Ljava/lang/String;
    .param p2, "trustAllServerCerts"    # Z

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    .line 123
    .local v1, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {p1, p2}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->makeSchemeForClientCert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "schemeName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 125
    .local v0, "existing":Lorg/apache/http/conn/scheme/Scheme;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 122
    .end local v0    # "existing":Lorg/apache/http/conn/scheme/Scheme;
    .end local v1    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2    # "schemeName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
