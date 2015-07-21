.class public Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
.super Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainKeyManager"
.end annotation


# instance fields
.field private final mCertificateChain:[Ljava/security/cert/X509Certificate;

.field private final mClientAlias:Ljava/lang/String;

.field private final mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "clientAlias"    # Ljava/lang/String;
    .param p2, "certificateChain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/SSLUtils$StubKeyManager;-><init>(Lcom/android/emailcommon/utility/SSLUtils$1;)V

    .line 348
    iput-object p1, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    .line 349
    iput-object p2, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 350
    iput-object p3, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    .line 351
    return-void
.end method

.method public static fromAlias(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 310
    :try_start_0
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 321
    .local v0, "certificateChain":[Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-static {p0, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Landroid/security/KeyChainException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 330
    .local v2, "privateKey":Ljava/security/PrivateKey;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 331
    :cond_0
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Can\'t access certificate from keystore"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v0    # "certificateChain":[Ljava/security/cert/X509Certificate;
    .end local v2    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Landroid/security/KeyChainException;
    const-string v3, "certificate chain"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 313
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 314
    .end local v1    # "e":Landroid/security/KeyChainException;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "certificate chain"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 316
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 322
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "certificateChain":[Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v1

    .line 323
    .local v1, "e":Landroid/security/KeyChainException;
    const-string v3, "private key"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 324
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 325
    .end local v1    # "e":Landroid/security/KeyChainException;
    :catch_3
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "private key"

    invoke-static {p1, v3, v1}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 327
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 334
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "privateKey":Ljava/security/PrivateKey;
    :cond_1
    new-instance v3, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;

    invoke-direct {v3, p1, v0, v2}, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 342
    const-string v0, "Email.Ssl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mClientAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/emailcommon/utility/SSLUtils$KeyChainKeyManager;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method
