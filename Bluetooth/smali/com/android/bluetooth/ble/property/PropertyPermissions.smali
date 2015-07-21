.class public Lcom/android/bluetooth/ble/property/PropertyPermissions;
.super Ljava/lang/Object;
.source "PropertyPermissions.java"


# static fields
.field private static final PAY_WHITELIST_PACKAGE:[Ljava/lang/String;

.field private static final SIGNATURE_WHITELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNLOCK_WHITELIST_PACKAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "miui.bluetooth.ble.test"

    aput-object v1, v0, v2

    const-string v1, "com.mipay.wallet"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->PAY_WHITELIST_PACKAGE:[Ljava/lang/String;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "miui.bluetooth.ble.test"

    aput-object v1, v0, v2

    const-string v1, "com.android.settings"

    aput-object v1, v0, v3

    const-string v1, "com.xiaomi.hm.health"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->UNLOCK_WHITELIST_PACKAGE:[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "701478a1e3b4b7e3978ea69469410f13"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "968ff658471c3572edd73abfc158946f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "d52e033c39b6f47a0248b2505a2d6a91"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    const-string v1, "34ef92b36ab6feff6e6e9dec480a2b8d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelfSignature(Landroid/content/pm/Signature;)V
    .locals 7
    .param p0, "signature"    # Landroid/content/pm/Signature;

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    const-string v5, "MD5"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/bluetooth/ble/Utils;->getFingerprint([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "sig":Ljava/lang/String;
    sget-object v4, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sig":Ljava/lang/String;
    :goto_0
    return-void

    .line 44
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sig":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sig":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkPackageName(ILjava/lang/String;)Z
    .locals 7
    .param p0, "property"    # I
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "whiteList":[Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_2

    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, "trust":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    const/4 v4, 0x1

    .line 74
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "trust":Z
    :cond_0
    :goto_2
    return v4

    .line 55
    :pswitch_1
    sget-object v5, Lcom/android/bluetooth/ble/property/PropertyPermissions;->PAY_WHITELIST_PACKAGE:[Ljava/lang/String;

    .line 56
    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v5, Lcom/android/bluetooth/ble/property/PropertyPermissions;->UNLOCK_WHITELIST_PACKAGE:[Ljava/lang/String;

    goto :goto_0

    .line 66
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "trust":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "trust":Z
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkSignature(ILandroid/content/pm/Signature;)Z
    .locals 8
    .param p0, "property"    # I
    .param p1, "signatrue"    # Landroid/content/pm/Signature;

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, "sig":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    const-string v6, "MD5"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/bluetooth/ble/Utils;->getFingerprint([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    :goto_0
    const/4 v4, 0x0

    .line 86
    .local v4, "trust":Z
    sget-object v5, Lcom/android/bluetooth/ble/property/PropertyPermissions;->SIGNATURE_WHITELIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    const/4 v4, 0x1

    .line 92
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return v4

    .line 82
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "trust":Z
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
