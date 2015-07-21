.class public final Lcom/android/emailcommon/provider/HostAuth;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/emailcommon/provider/EmailContent$HostAuthColumns;


# static fields
.field public static final CONTENT_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_CLIENT_CERT_ALIAS_COLUMN:I = 0x8

.field public static final CONTENT_DOMAIN_COLUMN:I = 0x7

.field public static final CONTENT_FLAGS_COLUMN:I = 0x4

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOGIN_COLUMN:I = 0x5

.field public static final CONTENT_PASSWORD_COLUMN:I = 0x6

.field public static final CONTENT_PORT_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_PROTOCOL_COLUMN:I = 0x1

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/provider/HostAuth;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTHENTICATE:I = 0x4

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SSL:I = 0x1

.field public static final FLAG_TLS:I = 0x2

.field public static final FLAG_TRUST_ALL:I = 0x8

.field public static final LEGACY_SCHEME_SMTP:Ljava/lang/String; = "smtp"

.field public static final PORT_UNKNOWN:I = -0x1

.field public static final SCHEME_TRUST_ALL_CERTS:Ljava/lang/String; = "trustallcerts"

.field public static final TABLE_NAME:Ljava/lang/String; = "HostAuth"

.field public static final USER_CONFIG_MASK:I = 0xb


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mClientCertAlias:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;

.field public mServerCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "certAlias"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/android/emailcommon/provider/HostAuth$1;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 89
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mServerCert:[B

    .line 339
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public static getSchemeFlags(Ljava/lang/String;)I
    .locals 7
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 153
    const-string v4, "\\+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "schemeParts":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 155
    .local v0, "flags":I
    array-length v4, v3

    if-lt v4, v6, :cond_1

    .line 156
    const/4 v4, 0x1

    aget-object v1, v3, v4

    .line 157
    .local v1, "part1":Ljava/lang/String;
    const-string v4, "ssl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    or-int/lit8 v0, v0, 0x1

    .line 162
    :cond_0
    :goto_0
    array-length v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 163
    aget-object v2, v3, v6

    .line 164
    .local v2, "part2":Ljava/lang/String;
    const-string v4, "trustallcerts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    or-int/lit8 v0, v0, 0x8

    .line 169
    .end local v1    # "part1":Ljava/lang/String;
    .end local v2    # "part2":Ljava/lang/String;
    :cond_1
    return v0

    .line 159
    .restart local v1    # "part1":Ljava/lang/String;
    :cond_2
    const-string v4, "tls"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static getSchemeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSchemeString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "clientAlias"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, ""

    .line 120
    .local v0, "security":Ljava/lang/String;
    and-int/lit8 v1, p1, 0xb

    sparse-switch v1, :sswitch_data_0

    .line 135
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t specify a certificate alias for a non-secure connection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :sswitch_0
    const-string v0, "+ssl+"

    .line 123
    goto :goto_0

    .line 125
    :sswitch_1
    const-string v0, "+ssl+trustallcerts"

    .line 126
    goto :goto_0

    .line 128
    :sswitch_2
    const-string v0, "+tls+"

    .line 129
    goto :goto_0

    .line 131
    :sswitch_3
    const-string v0, "+tls+trustallcerts"

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/emailcommon/utility/SSLUtils;->escapeForSchemeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static initHostAuth()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    return-void
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 102
    const-class v1, Lcom/android/emailcommon/provider/HostAuth;

    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    return-object v0
.end method

.method public static setHostAuthFromString(Lcom/android/emailcommon/provider/HostAuth;Ljava/lang/String;)V
    .locals 6
    .param p0, "auth"    # Lcom/android/emailcommon/provider/HostAuth;
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, "uri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 398
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 403
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 353
    instance-of v2, p1, Lcom/android/emailcommon/provider/HostAuth;

    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 356
    check-cast v0, Lcom/android/emailcommon/provider/HostAuth;

    .line 357
    .local v0, "that":Lcom/android/emailcommon/provider/HostAuth;
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLogin()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "trimUser":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 239
    .local v0, "password":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 241
    .end local v0    # "password":Ljava/lang/String;
    .end local v1    # "trimUser":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 237
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 238
    .restart local v1    # "trimUser":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 241
    .end local v1    # "trimUser":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 375
    const/16 v0, 0x1d

    .line 376
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 382
    :cond_1
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    add-int/2addr v1, v2

    return v1
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 174
    sget-object v0, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 175
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    .line 176
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 177
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 178
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 179
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 180
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 181
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 182
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    .line 183
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 413
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "schemeParts":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v1, v6, v0

    .line 415
    .local v1, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .line 416
    .local v5, "clientCertAlias":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/emailcommon/provider/HostAuth;->getSchemeFlags(Ljava/lang/String;)I

    move-result v4

    .line 419
    .local v4, "flags":I
    array-length v0, v6

    if-le v0, v2, :cond_1

    .line 420
    aget-object v5, v6, v2

    :cond_0
    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 427
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 428
    return-void

    .line 421
    :cond_1
    array-length v0, v6

    if-le v0, v3, :cond_0

    .line 422
    const-string v0, "trustallcerts"

    aget-object v2, v6, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    aget-object v0, v6, v3

    iput-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "flags"    # I

    .prologue
    .line 245
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/provider/HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 246
    return-void
.end method

.method public setConnection(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "flags"    # I
    .param p5, "clientCertAlias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 261
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    .line 263
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v3, v3, -0xc

    iput v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 264
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v4, p4, 0xb

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 266
    and-int/lit8 v3, p4, 0x3

    if-eqz v3, :cond_0

    move v1, v0

    .line 267
    .local v1, "useSecureConnection":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t use client alias on non-secure connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "useSecureConnection":Z
    :cond_0
    move v1, v2

    .line 266
    goto :goto_0

    .line 271
    .restart local v1    # "useSecureConnection":Z
    :cond_1
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    .line 272
    iput p3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 273
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 274
    iget v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 275
    .local v0, "useSSL":Z
    :goto_1
    const-string v2, "smtp"

    iget-object v3, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    if-eqz v0, :cond_4

    const/16 v2, 0x1d1

    :goto_2
    iput v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 280
    .end local v0    # "useSSL":Z
    :cond_2
    iput-object p5, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    .line 281
    return-void

    :cond_3
    move v0, v2

    .line 274
    goto :goto_1

    .line 276
    .restart local v0    # "useSSL":Z
    :cond_4
    const/16 v2, 0x19

    goto :goto_2
.end method

.method public setLogin(Ljava/lang/String;)V
    .locals 6
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "userName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 207
    .local v2, "userPassword":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "userInfoParts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 210
    array-length v3, v0

    if-le v3, v5, :cond_0

    .line 211
    aget-object v2, v0, v5

    .line 214
    .end local v0    # "userInfoParts":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/provider/HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "userPassword"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 225
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    goto :goto_0
.end method

.method public shouldTrustAllServerCerts()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldUseSsl()Z
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "port"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "flags"

    iget v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "certAlias"

    iget-object v2, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "accountKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[protocol "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/emailcommon/provider/HostAuth;->mClientCertAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    return-void
.end method
