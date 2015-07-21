.class public Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseTraceCursorWrapper"
.end annotation


# static fields
.field private static final TRACE_ENABLED:Z


# instance fields
.field private mTrace:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1029
    return-void
.end method

.method static alwaysCreateForTest(Landroid/database/Cursor;)Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
    .locals 1
    .param p0, "original"    # Landroid/database/Cursor;

    .prologue
    .line 1062
    new-instance v0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static get(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "original"    # Landroid/database/Cursor;

    .prologue
    .line 1058
    return-object p0
.end method

.method public static getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1038
    instance-of v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    if-eqz v0, :cond_0

    .line 1039
    check-cast p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    .end local p0    # "c":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1041
    :goto_0
    return-object v0

    .restart local p0    # "c":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Landroid/database/Cursor;)V
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1046
    if-nez p0, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor was closed here: Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1053
    :cond_1
    sget-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor not closed.  Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "STACK TRACE"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1034
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1035
    return-void
.end method
