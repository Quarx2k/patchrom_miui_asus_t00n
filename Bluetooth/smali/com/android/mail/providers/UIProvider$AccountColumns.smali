.class public final Lcom/android/mail/providers/UIProvider$AccountColumns;
.super Ljava/lang/Object;
.source "UIProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/providers/UIProvider$AccountColumns$SettingsColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_COOKIE_QUERY_URI:Ljava/lang/String; = "accountCookieUri"

.field public static final ACCOUNT_FROM_ADDRESSES:Ljava/lang/String; = "accountFromAddresses"

.field public static final ACCOUNT_MANAGER_NAME:Ljava/lang/String; = "accountManagerName"

.field public static final ALL_FOLDER_LIST_URI:Ljava/lang/String; = "allFolderListUri"

.field public static final CAPABILITIES:Ljava/lang/String; = "capabilities"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COMPOSE_URI:Ljava/lang/String; = "composeUri"

.field public static final DEFAULT_RECENT_FOLDER_LIST_URI:Ljava/lang/String; = "defaultRecentFolderListUri"

.field public static final ENABLE_MESSAGE_TRANSFORMS:Ljava/lang/String; = "enableMessageTransforms"

.field public static final EXPUNGE_MESSAGE_URI:Ljava/lang/String; = "expungeMessageUri"

.field public static final FOLDER_LIST_URI:Ljava/lang/String; = "folderListUri"

.field public static final FULL_FOLDER_LIST_URI:Ljava/lang/String; = "fullFolderListUri"

.field public static final HELP_INTENT_URI:Ljava/lang/String; = "helpIntentUri"

.field public static final MANUAL_SYNC_URI:Ljava/lang/String; = "manualSyncUri"

.field public static final MIME_TYPE:Ljava/lang/String; = "mimeType"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROVIDER_VERSION:Ljava/lang/String; = "providerVersion"

.field public static final QUICK_RESPONSE_URI:Ljava/lang/String; = "quickResponseUri"

.field public static final REAUTHENTICATION_INTENT_URI:Ljava/lang/String; = "reauthenticationUri"

.field public static final RECENT_FOLDER_LIST_URI:Ljava/lang/String; = "recentFolderListUri"

.field public static final SEARCH_URI:Ljava/lang/String; = "searchUri"

.field public static final SENDER_NAME:Ljava/lang/String; = "senderName"

.field public static final SEND_FEEDBACK_INTENT_URI:Ljava/lang/String; = "sendFeedbackIntentUri"

.field public static final SETTINGS_INTENT_URI:Ljava/lang/String; = "accountSettingsIntentUri"

.field public static final SYNC_AUTHORITY:Ljava/lang/String; = "syncAuthority"

.field public static final SYNC_STATUS:Ljava/lang/String; = "syncStatus"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNDO_URI:Ljava/lang/String; = "undoUri"

.field public static final UPDATE_SETTINGS_URI:Ljava/lang/String; = "updateSettingsUri"

.field public static final URI:Ljava/lang/String; = "accountUri"

.field public static final VIEW_INTENT_PROXY_URI:Ljava/lang/String; = "viewProxyUri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    return-void
.end method
