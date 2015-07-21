.class Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;
.super Ljava/lang/Object;
.source "SSLUtils.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SameCertificateCheckingTrustManager"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/HostAuth;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostAuth"    # Lcom/android/emailcommon/provider/HostAuth;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "serverCert"

    aput-object v3, v2, v9

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v7, p2, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 76
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 78
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    return-void

    .line 82
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "We don\'t check client certificates"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 97
    array-length v5, p1

    if-nez v5, :cond_0

    .line 98
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "No certificates?"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 100
    :cond_0
    const/4 v5, 0x0

    aget-object v2, p1, v5

    .line 101
    .local v2, "serverCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    if-nez v5, :cond_1

    .line 104
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-object v5, v5, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 105
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const-string v5, "X509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 107
    .local v3, "storedCert":Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    iput-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    .line 109
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "storedCert":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 115
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "PublicKey has changed since initial connection!"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 121
    .local v1, "encodedCert":[B
    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iput-object v1, v5, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 122
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "serverCert"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 124
    iget-object v5, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/emailcommon/utility/SSLUtils$SameCertificateCheckingTrustManager;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    .end local v1    # "encodedCert":[B
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 110
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "storedCert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method
