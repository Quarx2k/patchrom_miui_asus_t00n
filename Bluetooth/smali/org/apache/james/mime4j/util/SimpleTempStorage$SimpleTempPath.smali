.class Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/util/TempPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/util/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempPath"
.end annotation


# instance fields
.field private path:Ljava/io/File;

.field final synthetic this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
    .locals 1
    .param p2, "path"    # Ljava/io/File;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 129
    iput-object p2, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/james/mime4j/util/SimpleTempStorage;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # Lorg/apache/james/mime4j/util/SimpleTempStorage$1;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/james/mime4j/util/SimpleTempStorage;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/james/mime4j/util/SimpleTempStorage$1;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Lorg/apache/james/mime4j/util/TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    # invokes: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, v1, v1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    # invokes: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/james/mime4j/util/TempFile;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "allowInMemory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    # invokes: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, p1, p2}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath()Lorg/apache/james/mime4j/util/TempPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    const/4 v1, 0x0

    # invokes: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath(Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lorg/apache/james/mime4j/util/SimpleTempStorage;

    # invokes: Lorg/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;
    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lorg/apache/james/mime4j/util/SimpleTempStorage;Lorg/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
