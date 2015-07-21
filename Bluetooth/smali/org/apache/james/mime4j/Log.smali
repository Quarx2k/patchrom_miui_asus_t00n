.class public Lorg/apache/james/mime4j/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    sput-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1, "mClazz"    # Ljava/lang/Class;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    if-nez p0, :cond_0

    const-string v0, "(null)"

    .line 110
    .local v0, "m":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 113
    .end local v0    # "m":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    .restart local v0    # "m":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 93
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 101
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 85
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 89
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
