.class Lorg/apache/james/mime4j/message/TempFileBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "TempFileBinaryBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private tempFile:Lorg/apache/james/mime4j/util/TempFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 46
    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    .line 56
    invoke-static {}, Lorg/apache/james/mime4j/util/TempStorage;->getInstance()Lorg/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v1

    .line 57
    .local v1, "tempPath":Lorg/apache/james/mime4j/util/TempPath;
    const-string v2, "attachment"

    const-string v3, ".bin"

    invoke-interface {v1, v2, v3}, Lorg/apache/james/mime4j/util/TempPath;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    .line 59
    iget-object v2, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    invoke-interface {v2}, Lorg/apache/james/mime4j/util/TempFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 60
    .local v0, "out":Ljava/io/OutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 61
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 62
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->tempFile:Lorg/apache/james/mime4j/util/TempFile;

    invoke-interface {v0}, Lorg/apache/james/mime4j/util/TempFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 76
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/TempFileBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 90
    return-void
.end method
