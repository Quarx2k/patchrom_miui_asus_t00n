.class public final Lcom/android/emailcommon/utility/IntentUtilities;
.super Ljava/lang/Object;
.source "IntentUtilities.java"


# static fields
.field private static final ACCOUNT_ID_PARAM:Ljava/lang/String; = "ACCOUNT_ID"

.field private static final ACCOUNT_NAME_PARAM:Ljava/lang/String; = "ACCOUNT_NAME"

.field private static final ACCOUNT_UUID_PARAM:Ljava/lang/String; = "ACCOUNT_UUID"

.field private static final ACTIVITY_INTENT_HOST:Ljava/lang/String; = "ui.email.android.com"

.field private static final ACTIVITY_INTENT_SCHEME:Ljava/lang/String; = "content"

.field private static final MAILBOX_ID_PARAM:Ljava/lang/String; = "MAILBOX_ID"

.field private static final MESSAGE_ID_PARAM:Ljava/lang/String; = "MESSAGE_ID"

.field public static final PATH_SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 48
    .local v0, "b":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string v1, "ui.email.android.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    return-object v0
.end method

.method public static createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->prepareRestartAppIntent(Landroid/content/Intent;)V

    .line 183
    return-object v0
.end method

.method public static createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->prepareRestartAppIntent(Landroid/content/Intent;)V

    .line 193
    return-object v0
.end method

.method public static getAccountIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v0, "ACCOUNT_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAccountNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string v0, "ACCOUNT_NAME"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getStringFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountUuidFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-object v2

    .line 136
    :cond_0
    const-string v3, "ACCOUNT_UUID"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "uuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .end local v1    # "uuid":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private static getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 141
    const-wide/16 v0, -0x1

    .line 142
    .local v0, "value":J
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-static {v2, p1, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    :cond_0
    return-wide v0
.end method

.method private static getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 165
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 161
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMailboxIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const-string v0, "MAILBOX_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMessageIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const-string v0, "MESSAGE_ID"

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getStringFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "paramName"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/emailcommon/utility/IntentUtilities;->getStringParamFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    return-object v0
.end method

.method private static getStringParamFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 173
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private static prepareRestartAppIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method public static setAccountId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .param p0, "b"    # Landroid/net/Uri$Builder;
    .param p1, "accountId"    # J

    .prologue
    .line 58
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "ACCOUNT_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    :cond_0
    return-void
.end method

.method public static setAccountName(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 1
    .param p0, "b"    # Landroid/net/Uri$Builder;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "ACCOUNT_NAME"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_0
    return-void
.end method

.method public static setAccountUuid(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 1
    .param p0, "b"    # Landroid/net/Uri$Builder;
    .param p1, "mUuid"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :cond_0
    const-string v0, "ACCOUNT_UUID"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    return-void
.end method

.method public static setMailboxId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .param p0, "b"    # Landroid/net/Uri$Builder;
    .param p1, "mailboxId"    # J

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "MAILBOX_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :cond_0
    return-void
.end method

.method public static setMessageId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .param p0, "b"    # Landroid/net/Uri$Builder;
    .param p1, "messageId"    # J

    .prologue
    .line 85
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "MESSAGE_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    :cond_0
    return-void
.end method
