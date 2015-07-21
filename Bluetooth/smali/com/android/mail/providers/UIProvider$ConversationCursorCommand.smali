.class public final Lcom/android/mail/providers/UIProvider$ConversationCursorCommand;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationCursorCommand"
.end annotation


# static fields
.field public static final COMMAND_GET_CONVERSATION_INFO:Ljava/lang/String; = "conversationInfo"

.field public static final COMMAND_GET_RAW_FOLDERS:Ljava/lang/String; = "rawFolders"

.field public static final COMMAND_KEY_ENTERED_FOLDER:Ljava/lang/String; = "enteredFolder"

.field public static final COMMAND_KEY_OPTIONS:Ljava/lang/String; = "options"

.field public static final COMMAND_KEY_SET_VISIBILITY:Ljava/lang/String; = "setVisibility"

.field public static final COMMAND_NOTIFY_CURSOR_UI_POSITION_CHANGE:Ljava/lang/String; = "uiPositionChange"

.field public static final COMMAND_RESPONSE_FAILED:Ljava/lang/String; = "failed"

.field public static final COMMAND_RESPONSE_OK:Ljava/lang/String; = "ok"

.field public static final OPTION_MOVE_POSITION:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
