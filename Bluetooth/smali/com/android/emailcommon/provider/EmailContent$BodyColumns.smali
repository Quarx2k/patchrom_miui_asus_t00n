.class public interface abstract Lcom/android/emailcommon/provider/EmailContent$BodyColumns;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BodyColumns"
.end annotation


# static fields
.field public static final HTML_CONTENT:Ljava/lang/String; = "htmlContent"

.field public static final HTML_REPLY:Ljava/lang/String; = "htmlReply"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTRO_TEXT:Ljava/lang/String; = "introText"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MESSAGE_KEY:Ljava/lang/String; = "messageKey"

.field public static final QUOTED_TEXT_START_POS:Ljava/lang/String; = "quotedTextStartPos"

.field public static final SOURCE_MESSAGE_KEY:Ljava/lang/String; = "sourceMessageKey"

.field public static final TEXT_CONTENT:Ljava/lang/String; = "textContent"

.field public static final TEXT_REPLY:Ljava/lang/String; = "textReply"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field
