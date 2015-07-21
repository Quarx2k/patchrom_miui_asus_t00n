.class public Lcom/android/emailcommon/utility/NotifyIconUtilities;
.super Ljava/lang/Object;
.source "NotifyIconUtilities.java"


# static fields
.field private static final ADDRESS_SEPARATOR:Ljava/lang/String; = "@"

.field private static final DOMAIN_SEPARATOR:Ljava/lang/String; = "\\."

.field private static final LOG_TAG:Ljava/lang/String; = "NotifyIconUtilities"

.field private static final WILD_CHARACTER:C = '?'

.field private static final WILD_STRING:Ljava/lang/String; = "*"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNotifyIconForAccountDomain(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconProviders"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "defaultIcon"    # I

    .prologue
    .line 39
    const-string v11, "NotifyIconUtilities"

    const-string v12, "find the notify icon for account: "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    move/from16 v4, p3

    .line 42
    .local v4, "notify_icon_res":I
    const-string v11, "@"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v1, v11, v12

    .line 44
    .local v1, "domain":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 46
    .local v9, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 47
    .local v3, "foundNotifyIcon":Z
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    .local v10, "xmlEventType":I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 48
    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const-string v11, "provider"

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 50
    const/4 v11, 0x0

    const-string v12, "domain"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 52
    .local v7, "providerDomain":Ljava/lang/String;
    :try_start_1
    invoke-static {v1, v7}, Lcom/android/emailcommon/utility/NotifyIconUtilities;->matchProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 53
    const/4 v11, 0x0

    const-string v12, "icon"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "notify_icon_res_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v6, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 57
    .local v8, "resId":I
    if-lez v8, :cond_1

    .line 58
    move v4, v8

    .line 60
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "notify_icon_res_name":Ljava/lang/String;
    .end local v8    # "resId":I
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v11, "NotifyIconUtilities"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "providers line: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; Domain contains multiple globals"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 72
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "foundNotifyIcon":Z
    .end local v7    # "providerDomain":Ljava/lang/String;
    .end local v9    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v10    # "xmlEventType":I
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "NotifyIconUtilities"

    const-string v12, "Error while trying to load provider settings."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move v5, v4

    .line 75
    .end local v4    # "notify_icon_res":I
    .local v5, "notify_icon_res":I
    :goto_1
    return v5

    .line 66
    .end local v5    # "notify_icon_res":I
    .restart local v3    # "foundNotifyIcon":Z
    .restart local v4    # "notify_icon_res":I
    .restart local v9    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "xmlEventType":I
    :cond_3
    const/4 v11, 0x3

    if-ne v10, v11, :cond_0

    :try_start_3
    const-string v11, "provider"

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v3, :cond_0

    move v5, v4

    .line 69
    .end local v4    # "notify_icon_res":I
    .restart local v5    # "notify_icon_res":I
    goto :goto_1
.end method

.method private static matchProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "testDomain"    # Ljava/lang/String;
    .param p1, "providerDomain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 85
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "testParts":[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "providerParts":[Ljava/lang/String;
    array-length v6, v4

    array-length v7, v2

    if-eq v6, v7, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v5

    .line 90
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_3

    .line 91
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "testPart":Ljava/lang/String;
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "providerPart":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3, v1}, Lcom/android/emailcommon/utility/NotifyIconUtilities;->matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v1    # "providerPart":Ljava/lang/String;
    .end local v3    # "testPart":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static matchWithWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "testPart"    # Ljava/lang/String;
    .param p1, "providerPart"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 103
    .local v2, "providerLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 106
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 108
    .local v3, "testChar":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 109
    .local v1, "providerChar":C
    if-eq v3, v1, :cond_2

    const/16 v5, 0x3f

    if-ne v1, v5, :cond_0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "providerChar":C
    .end local v3    # "testChar":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
