.class Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    .line 191
    iput-object p2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    .line 192
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/james/mime4j/util/SimpleTempStorage;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lorg/apache/james/mime4j/util/SimpleTempStorage$1;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
