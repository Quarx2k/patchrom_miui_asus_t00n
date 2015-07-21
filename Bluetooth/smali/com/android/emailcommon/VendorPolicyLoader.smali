.class public Lcom/android/emailcommon/VendorPolicyLoader;
.super Ljava/lang/Object;
.source "VendorPolicyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    }
.end annotation


# static fields
.field private static final ARGS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final FIND_PROVIDER:Ljava/lang/String; = "findProvider"

.field private static final FIND_PROVIDER_IN_URI:Ljava/lang/String; = "findProvider.inUri"

.field private static final FIND_PROVIDER_IN_USER:Ljava/lang/String; = "findProvider.inUser"

.field private static final FIND_PROVIDER_NOTE:Ljava/lang/String; = "findProvider.note"

.field private static final FIND_PROVIDER_OUT_URI:Ljava/lang/String; = "findProvider.outUri"

.field private static final FIND_PROVIDER_OUT_USER:Ljava/lang/String; = "findProvider.outUser"

.field private static final GET_IMAP_ID:Ljava/lang/String; = "getImapId"

.field private static final GET_IMAP_ID_CAPA:Ljava/lang/String; = "getImapId.capabilities"

.field private static final GET_IMAP_ID_HOST:Ljava/lang/String; = "getImapId.host"

.field private static final GET_IMAP_ID_USER:Ljava/lang/String; = "getImapId.user"

.field private static final GET_POLICY_METHOD:Ljava/lang/String; = "getPolicy"

.field private static final POLICY_CLASS:Ljava/lang/String; = "com.android.email.policy.EmailPolicy"

.field private static final POLICY_PACKAGE:Ljava/lang/String; = "com.android.email.policy"

.field private static final USE_ALTERNATE_EXCHANGE_STRINGS:Ljava/lang/String; = "useAlternateExchangeStrings"

.field private static sInstance:Lcom/android/emailcommon/VendorPolicyLoader;


# instance fields
.field private final mPolicyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v0, "com.android.email.policy"

    const-string v1, "com.android.email.policy.EmailPolicy"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkPackageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "allowNonSystemApk"    # Z

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-nez p4, :cond_0

    invoke-static {p1, p2}, Lcom/android/emailcommon/VendorPolicyLoader;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    .line 127
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 112
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 114
    .local v4, "policyContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 116
    const-string v5, "getPolicy"

    sget-object v6, Lcom/android/emailcommon/VendorPolicyLoader;->ARGS:[Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 126
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "policyContext":Landroid/content/Context;
    :goto_1
    iput-object v3, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VendorPolicyLoader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 122
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VendorPolicyLoader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 117
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public static clearInstanceForTest()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 92
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/emailcommon/VendorPolicyLoader;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    return-object v0
.end method

.method public static injectPolicyForTest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Using policy: package=%s name=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    new-instance v1, Lcom/android/emailcommon/VendorPolicyLoader;

    invoke-direct {v1, p0, p1, v0, v5}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/emailcommon/VendorPolicyLoader;->sInstance:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 82
    return-void
.end method

.method public static isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 133
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 135
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public findProviderForDomain(Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    .locals 5
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v2, "params":Landroid/os/Bundle;
    const-string v4, "findProvider"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "findProvider"

    invoke-virtual {p0, v4, v2}, Lcom/android/emailcommon/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 262
    .local v0, "out":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    new-instance v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-direct {v1}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;-><init>()V

    .line 264
    .local v1, "p":Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 265
    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->label:Ljava/lang/String;

    .line 266
    iput-object p1, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    .line 267
    const-string v3, "findProvider.inUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 268
    const-string v3, "findProvider.inUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 269
    const-string v3, "findProvider.outUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 270
    const-string v3, "findProvider.outUser"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 271
    const-string v3, "findProvider.note"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->note:Ljava/lang/String;

    .line 274
    .end local v1    # "p":Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method public getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v0, "params":Landroid/os/Bundle;
    const-string v2, "getImapId.user"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "getImapId.host"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "getImapId.capabilities"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "getImapId"

    invoke-virtual {p0, v2, v0}, Lcom/android/emailcommon/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "getImapId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method

.method public getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, "ret":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/android/emailcommon/VendorPolicyLoader;->mPolicyMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/Bundle;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .end local v2    # "ret":Landroid/os/Bundle;
    :goto_1
    return-object v2

    .line 150
    .restart local v2    # "ret":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    const-string v4, "VendorPolicyLoader"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public useAlternateExchangeStrings()Z
    .locals 3

    .prologue
    .line 166
    const-string v0, "useAlternateExchangeStrings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/VendorPolicyLoader;->getPolicy(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "useAlternateExchangeStrings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
